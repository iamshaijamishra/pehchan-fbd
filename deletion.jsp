<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<%! String[] deletion;
		Connection con;
		PreparedStatement ps;
		ResultSet rs;
 	%>
	

<%
	deletion=request.getParameterValues("cb");
		
	
		
	if(deletion==null)
	{

%>
		<jsp:forward page="viewnewsDB.jsp"/>
<%
	}
		 
	
	try
	{

	    Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad","root","root");
        ps=con.prepareStatement("select id,image_name,title,type,category from news");
        rs=ps.executeQuery();
        for(int i=0;i<deletion.length;i++)
        {
        	ps.executeUpdate("delete from news where id='"+deletion[i]+"'");
        	
        }
%>


       <jsp:forward page="viewnewsDB.jsp"/>
<%

	}

catch(Exception e){
	out.print(e);
}
%>
</body>
</html>