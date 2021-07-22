<%@page import="java.sql.*"%>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs;
%>
<%

	String email=request.getParameter("email");
	String password=request.getParameter("password");
	boolean valid=false;
	try
	{

	    Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad","root","root");
        ps=con.prepareStatement("select email,password from signup");
        
        rs=ps.executeQuery();
        while(rs.next())
        {
        	if(email.equals(rs.getString("email")) && password.equals(rs.getString("password")))
                {
                    valid=true;
                    break;
                }
      	}
        if(valid)
            {
            %>
             <jsp:forward page="loginacc.jsp"/>
             <%
            }
            else
            {


        
%>

<html>
<div>
	<b><font color="red">Email or password entered wrong</font></b>
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