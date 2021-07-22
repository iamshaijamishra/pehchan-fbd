<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
//String name=(String)session.getAttribute("name");
//String otpvalue=(String)session.getAttribute("ran");
String phone=(String)session.getAttribute("phone");
String email=(String)request.getParameter("email");
String fname=(String)request.getParameter("firstname");
String lname=(String)request.getParameter("lastname");
String country=(String)request.getParameter("country");
String state=(String)request.getParameter("state");
String city=(String)request.getParameter("city");
String dob=(String)request.getParameter("bday");
String password=(String)request.getParameter("password");
String gender=(String)request.getParameter("gender");
String status=(String)request.getParameter("status");
//String otp=(String)request.getParameter("otp");


//String enterOtp=otpvalue;

//if(otp.equals(otpvalue))
//{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn =DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad", "root", "root");
PreparedStatement ps=conn.prepareStatement("insert into signup values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )");
ps.setString(1,email);
ps.setString(2,fname);
ps.setString(3,lname);
ps.setString(4,phone);
ps.setString(5,country);
ps.setString(6,state);
ps.setString(7,city);
ps.setString(8,dob);
ps.setString(9,password);
ps.setString(10,gender);
ps.setString(11,status);
ps.executeUpdate();
out.println(status);
out.println(email);

out.println("Successful");
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
//}
//else
//{
//out.println("Data not inserted");

//}
%>