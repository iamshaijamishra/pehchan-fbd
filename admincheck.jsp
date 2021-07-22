<%@include file="nocache.jsp" %>
<%@page import="java.sql.*"%>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs;
%>
<%

	String email=request.getParameter("email1");
	String password=request.getParameter("password1");
    
	boolean valid=false;
	try
	{

	    Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad","root","root");
        ps=con.prepareStatement("select email,password from admin");
        
        rs=ps.executeQuery();
        while(rs.next())
        {
            if((email.equals(email)) && (password.equals(password)))
            {
                valid=true;
                break;
            }
        }
        if(valid)
        {
            //session.setAttribute("email",email);
            response.sendRedirect("adminpanel.jsp");
        }
        else{

       
%>

<html>
<div>
	<b><font color="red">Email or password entered wrong</font></b>
</div>
</html>
       <jsp:forward page="adminlogin.html"/>
<%

	}
}
catch(Exception e){
	out.print(e);
}
%>