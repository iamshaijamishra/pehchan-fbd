<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<%! String[] deletion1;
		Connection con;
		PreparedStatement ps;
		ResultSet rs;
 	%>
	

<%

	deletion1=request.getParameterValues("cb1");
	if(deletion1==null)
	{

%>
		<jsp:forward page="viewusersDB.jsp"/>
<%
	}
		 
	
	try
	{

	    Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad","root","root");
        ps=con.prepareStatement("select email,firstname,lastname,phone,country,state,city,dob,password,gender,status from signup");
        rs=ps.executeQuery();
        for(int i=0;i<deletion1.length;i++)
        {
        	ps.executeUpdate("delete from signup where email='"+deletion1[i]+"'");
        	
        }
%>


       <jsp:forward page="viewusersDB.jsp"/>
<%

	}

catch(Exception e){
	out.print(e);
}
%>
</body>
</html>