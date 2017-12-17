<%@page import="com.groom.dao.UserDAO"%>
<%@page import="com.groom.bean.User"%>
<%@page import="com.groom.dao.impl.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String mail=request.getParameter("mail");
String phone=request.getParameter("phone");
User user = (User) session.getAttribute("user");
String username = user.getUsername().toString();
UserDAO userDAO=new UserDAOImpl();

//String username=(session.getAttribute("user")).toString();

System.out.println(mail);
System.out.println(phone);
System.out.println(username);
if(request.getParameter("mail")==null && request.getParameter("phone")==null) {
	if(userDAO.updateDetails(mail, phone, username)){
		System.out.println("success");
		out.print(1);
	}else{
		System.out.println("fail");
		out.print(0);
	}
} else {
	out.print(2);
}
%>

