<%@page import="java.sql.*"%>

<%
//String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
//String phone=(String)session.getAttribute("phone");
String otp=(String)session.getAttribute("ran");

String otpvalue=(String)request.getParameter("otpvalue");
//String enterOtp=otpvalue;

if(otp.equals(otpvalue))
{
out.println(1);
//respnse.sendRedirect("index.html");
}

else if(!otp.equals(otpvalue))
{
out.println("OTP not matched");

//RequestDispatcher rd=request.getRequestDispatcher("index.html");
//rd.include(request,response);
}
%>