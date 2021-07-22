<%@page import="java.util.Random"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%> 
<%@page import="java.net.HttpURLConnection"%> 
<%@page import=" java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//String name=request.getParameter("name");
//String email=request.getParameter("email");
String phone=request.getParameter("phone");
int random =(int)(Math.random() * 9000 + 1000);
//session.setAttribute("name",name); 
//session.setAttribute("email",email);
session.setAttribute("phone",phone);
session.setAttribute("otp",random);
 
try {
			// Construct data
			String apiKey = "apikey=" + "48d86466-ad51-11e9-ade6-0200cd936042";
			String message = "&message=" + "this is your otp" ;
			String sender = "&sender=" + "TX-TLCL";
			String numbers = "&numbers=" + "91"+phone;
			
HttpURLConnection conn = (HttpURLConnection) new URL("https://2factor.in/API/V1/48d86466-ad51-11e9-ade6-0200cd936042/SMS/"+phone+"/"+random+"").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);

			}
			//response.sendRedirect("otpenter.jsp");
			out.println("otp sent");
			rd.close();
			
			//return stringBuffer.toString();
		} catch (Exception e) {
			out.println(""+e);
			//return "Error "+e;
		}
%>
</body>
</html>