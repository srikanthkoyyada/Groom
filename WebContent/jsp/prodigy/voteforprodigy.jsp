<%@page import="com.groom.service.MiscService"%>
<%@page import="com.groom.service.impl.MiscServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String votinguser=request.getParameter("votinguser");
int id=Integer.parseInt(request.getParameter("id").toString());

MiscService miscService=new MiscServiceImpl();
if(miscService.voteProdigyEntry(votinguser, id)){
	System.out.println("vote submitted");
out.print(1);
}else{
	System.out.println("vote not saved");
	out.print(0);
}
%>