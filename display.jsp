<html>
<head>
  <title></title>
 

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
</head>


<%@page import="java.sql.*;"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<body> 
  

<br><br>
<%
	String id=(String)(request.getParameter("id"));


    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql:///pehchan_faridabad","root","root");
        PreparedStatement ps; 
        ps=con.prepareStatement("select image_name,title,content,id from news where id=?");
        ps.setInt(1,Integer.parseInt(id));
        ResultSet rs=ps.executeQuery();
        rs.next();
    %>
    
      
    
        <b><p style="font-size: 40px; text-align: center;"> <%out.print(rs.getString("title"));%></p></b>
      	
      	<center><img src="images/<%=rs.getString("image_name") %>" style="height:300px; width:500px;"></center>
      	<br>
        <p style="font-size: 20px; margin-left: 20px; margin-right: 20px;"> <%out.print(rs.getString("content"));%></p>
     
      <br>
   
      
      

  <%
}
   catch(SQLException e){
        out.print(e.getMessage());
    }
    %>


</body>
</html>