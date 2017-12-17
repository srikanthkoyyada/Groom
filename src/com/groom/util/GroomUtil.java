package com.groom.util;

import java.security.Key;
import java.sql.Date;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Properties;
import java.util.Random;
import java.util.TimeZone;
import java.util.UUID;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import com.groom.bean.User;

public class GroomUtil {
	private static final String ALGO = "AES";
	private static final byte[] keyValue = new byte[] { 'g', 'r', 'o', 'o',
			'm', '4', 'j', 'e', 'e', 'o', 'f', 'b', 'o', 'j', 'j', 'a' };
	private static final String HOST = "smtpout.asia.secureserver.net";
	private static final String MAIL_AUTH_USER = "info@groom4more.com";
	private static final String MAIL_AUTH_PASSWORD = "Bojja9977";

	private static Key generateKey() throws Exception {
		Key key = new SecretKeySpec(keyValue, ALGO);
		return key;
	}

	public static String getEncryptedPassword(String password) {
		try {

			Key key = generateKey();
			Cipher c = Cipher.getInstance(ALGO);
			c.init(Cipher.ENCRYPT_MODE, key);
			byte[] encVal = c.doFinal(password.getBytes());
			String encryptedValue = new BASE64Encoder().encode(encVal);
			return encryptedValue;
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return null;

	}

	public static String getDecryptedPassword(String encryptedPassword) {
		try {
			Key key = generateKey();
			Cipher c = Cipher.getInstance(ALGO);
			c.init(Cipher.DECRYPT_MODE, key);
			byte[] decordedValue = new BASE64Decoder()
					.decodeBuffer(encryptedPassword);
			byte[] decValue = c.doFinal(decordedValue);
			String decryptedValue = new String(decValue);
			return decryptedValue;
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return null;

	}

	public static java.sql.Date getCurrentDate() {
		Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Asia/Calcutta"));
		 
		//Calendar cal = Calendar.getInstance();
		//TimeZone timeZone = TimeZone.getTimeZone("Asia/Calcutta");
		//cal.setTimeZone(timeZone);
		long time = calendar.getTimeInMillis();

		java.sql.Date currentDate = new java.sql.Date(time);

		return currentDate;
	}

	public static Date convertStringtoSqlDate(String date)
			throws ParseException {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date parsed = format.parse(date);
		java.sql.Date sqlDate = new java.sql.Date(parsed.getTime());

		return sqlDate;

	}

	public static Time getSqlTimeDiff(String totalTime, String balTime) {
		long hours = 0, minutes = 0, seconds = 0;
		try {
			java.sql.Time oldTime = java.sql.Time.valueOf(totalTime);
			java.sql.Time currentTime = java.sql.Time.valueOf(balTime);
			long milliseconds1 = oldTime.getTime();
			long milliseconds2 = currentTime.getTime();
			long diff = milliseconds2 - milliseconds1;
			long diffSeconds = diff / 1000;
			hours = Math.abs(diffSeconds) / 3600;
			minutes = (Math.abs(diffSeconds) % 3600) / 60;
			seconds = Math.abs(diffSeconds) % 60;
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return convertStringToSqlTime(hours + ":" + minutes + ":" + seconds);
	}
	
	public static Time convertStringToSqlTime(String time) {
		java.sql.Time sqlTime = null;
		try {
			SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
			java.util.Date utilDate = format.parse(time);
			long t = utilDate.getTime();
			sqlTime = new Time(t);
		} catch (ParseException exception) {
			exception.printStackTrace();
		}
		return sqlTime;
	}

	public static boolean sendMail(String from, String to, String subjectText,
			String bodyText, String mailTitle) throws Exception {

		Properties properties = new Properties();

		properties.put("mail.transport.protocol", "smtp");
		properties.put("mail.smtp.host", HOST);
		properties.put("mail.smtp.starttls.enable", false);
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "3535");

		try {
			Session session = Session.getDefaultInstance(properties,
					new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(MAIL_AUTH_USER,
									MAIL_AUTH_PASSWORD);
						}
					});

			Message message = new MimeMessage(session);
			InternetAddress fromAddress = new InternetAddress(from, mailTitle);
			message.setFrom(fromAddress);
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));

			message.setSubject(subjectText);
			message.setContent(bodyText, "text/html; charset=ISO-8859-1");

			Transport.send(message);
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return false;
		}

	}

	public static String generateActivationCode(String customString, int length) {

		final String AB = "0123456789" + customString
				+ "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		Random rnd = new Random();

		StringBuilder sb = new StringBuilder(length);
		for (int i = 0; i < length; i++)
			sb.append(AB.charAt(rnd.nextInt(AB.length())));
		return sb.toString();

	}

	public static String buidRegistrationMail(User user, String activationCode) {
		String body = "<div class=\"well\">"
				+ "<div class=\"row\"><img src=\"groom4more.com/images/gr.png\" alt=\"Logo\"></div>"
				+ "<div class=\"row\"><div class=\"col-md-1\"></div><div class=\"col-md-10\">"
				+ "<h3>Welcome to the Groom4More community,  "
				+ user.getFirstname()
				+ " !</h3>"
				+ "<p>You have registered with the Username as <b>"
				+ user.getUsername()
				+ "</b></p>"
				+ "<p>Please click the below activation link to activate your account :</p>"
				+ "<a href=\"http://groom4more.com/user-activation?acode="+activationCode
				+ "\">Activate Groom4more Account</a>"
				+ "<p>For future reference, we are sharing the details you	provided us with :</p>"
				+ "<br>"
				+ "<div class=\"col-md-2\"></div>"
				+ "<table>"
				+ "<thead></thead>"
				+ "<tbody>"
				+ "<tr><td>User Name :</td><td>"
				+ user.getUsername()
				+ "</td></tr>"
				+ "<tr><td>User Password :</td><td>"
				+ user.getPassword()
				+ "</td></tr>"
				+ "<tr><td>Full Name :</td><td>"
				+ user.getFirstname()
				+ " "
				+ user.getLastname()
				+ "</td></tr>"
				+ "<tr><td>Email ID :</td><td>"
				+ user.getMail()
				+ "</td></tr>"
				+ "<tr><td>Mobile/Phone Number :</td><td>"
				+ user.getMobile()
				+ "</td></tr>"
				+ "<tr><td>Class :</td><td>"
				+ user.getStandard()
				+ "</td></tr>"
				+ "</tbody>"
				+ "</table>"
				+ "<br>"
				+ "<p>If you need assistance or have any queries, feel free to call us up at 97013 20902</p>"
				+ "<p>You can also email us at <a href=\"#\">info@groom4more.com</a> and our team will get in touch with you as soon as possible.</p>"
				+ "<h3>All the best !</h3>"
				+ "<p>Regards, The Groom4More Team.</p>"
				+ "</div>"
				+ "</div>"
				+ "</div>";
		return body;
	}

	public static String buidForgotPwdMail(String pwd) {
		String body = "<div class=\"well\">"
				+ "<div class=\"row\"><img src=\"groom4more.com/images/gr.png\" alt=\"Logo\"></div>"
				+ "<div class=\"row\"><div class=\"col-md-1\"></div><div class=\"col-md-10\">"
				+ "<h3>Password for your Groom4More account is  "
				+ getDecryptedPassword(pwd)
				+ "</h3>"

				+ "<br>"
				+ "<p>Please ignore if you are not requested your password</p>"
				+ "<p>If you need assistance or have any queries, feel free to call us up at 97013 20902</p>"
				+ "<p>You can also email us at <a href=\"#\">info@groom4more.com</a> and our team will get in touch with you as soon as possible.</p>"

				+ "<p>Regards, The Groom4More Team.</p>" + "</div>" + "</div>"
				+ "</div>";
		return body;
	}

	public static String getActivationCode() {

		String aCode = UUID.randomUUID().toString();

		System.out.println("Activation code is : " + aCode);
		return aCode;
	}
	
	public static String buidProdigiesMail(String username, int id) {
		String body = "<div class=\"well\">"
				+ "<div class=\"row\"><img src=\"groom4more.com/images/gr.png\" alt=\"Logo\"></div>"
				+ "<div class=\"row\"><div class=\"col-md-1\"></div><div class=\"col-md-10\">"
				+ "<h3>Welcome to the Prodigies at Groom4More,  "
				+ username
				+ " !</h3>"
				+ "<p>You have submitted your prodigy with the Username as <b>"
				+ username
				+ "</b></p>"
				+ "<p>You can view your entry at <a href='www.groom4more.com/jsp/prodigy/entry.jsp?id="
				+ id+ "'>www.groom4more.com/prodigy_entry.jsp?id="
				+ id+ "</a></p>"
				+ "<br>"
				+ "<br>"
				+ "<p>If you need assistance or have any queries, feel free to call us up at 97013 20902</p>"
				+ "<p>You can also email us at <a href=\"#\">info@groom4more.com</a> and our team will get in touch with you as soon as possible.</p>"
				+ "<h3>All the best !</h3>"
				+ "<p>Regards, The Groom4More Team.</p>"
				+ "</div>"
				+ "</div>"
				+ "</div>";
		return body;
	}
	
}
