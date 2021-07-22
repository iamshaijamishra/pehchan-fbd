<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
//String name=(String)session.getAttribute("name");
//String email=(String)session.getAttribute("email");
String phone=(String)session.getAttribute("phone");
int otp= (Integer)session.getAttribute("otp");

int otpvalue=Integer.parseInt(request.getParameter("otpvalue"));
//String enterOtp=otpvalue;

if(otp==otpvalue)
{
//try
//{
//Class.forName("com.mysql.jdbc.Driver");
//Connection conn =DriverManager.getConnection("jdbc:mysql:///test", "root", "root");
//PreparedStatement ps=conn.prepareStatement("insert into test values(?, ?, ?)");
//ps.setString(1,name);
//ps.setString(2,email);
//ps.setString(3,phone);
//ps.executeUpdate();
out.println("1");
//response.sendRedirect("signup.html");
//RequestDispatcher rd=request.getRequestDispatcher("/index.html");
//}
//catch(Exception e)
//{
  //out.print(e);
//e.printStackTrace();
//}
}
else
{
	out.print("0");
//out.println("OTP not matched");
//RequestDispatcher rd=request.getRequestDispatcher("/otp.jsp");
//rd.include(request,response);
}
%>