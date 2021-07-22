<%@page import="java.sql.*;"%>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs;
%>

<%

	String email=(String)session.getAttribute("email");

	String phone=(String)session.getAttribute("phone");
	String password=request.getParameter("npassword");
	String cpassword=request.getParameter("cpassword");
	
	try
	{

	    Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad","root","root");
        
        if(password.equals(cpassword))
        {
        	ps=con.prepareStatement("update signup set password=? where email=? OR phone=?");
            ps.setString(1,password);
            ps.setString(2,email);
            ps.setString(3,phone);
        	ps.executeUpdate();
        	out.print("successful");
      	}
        else
        {
%>

<html>
<div>
	<b><font color="red">Passwords didn't match</font></b>
</div>
</html>
       <jsp:forward page="login.html"/>
<%

	}
}
catch(Exception e){
	out.print(e);
}
%>