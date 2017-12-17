<%@page import="com.groom.dao.AdminDAO"%>
<%@page import="com.groom.dao.impl.AdminDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String CategoryName = request.getParameter("subject");
int topicId = Integer.parseInt(request.getParameter("topic"));
AdminDAO adminDao = new AdminDAOImpl();
int noOfQues = adminDao.getNoofQuestions(CategoryName, topicId);

		out.print(+noOfQues);

%>

