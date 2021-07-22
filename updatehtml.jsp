<%@page import="java.sql.*;"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs;
%>
<%
String id=(String)(request.getParameter("update"));
session.setAttribute("id",id);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  
  
  
  </style>
</head>
<body>
  
<%

 try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=(Connection)DriverManager.getConnection(
            "jdbc:mysql:///pehchan_faridabad","root","root");
        
        ps=con.prepareStatement("select id,title,content,type,category from news where id=?");
        ps.setString(1,id);
        rs=ps.executeQuery();
        rs.next();
        
          String title=rs.getString("title");
          String content=rs.getString("content");
          String type=rs.getString("type");
          String category=rs.getString("category");
          //out.print(content);
    %>
    <div class="container">
 <center><b style="font-size: 50px;"> Updation</b></center>
 <br>
  <form class="form-horizontal" action="Updatedb.jsp">
    <div class="form-group">
      <label class="control-label col-sm-2" for="title">Title:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="title"  name="title"  value="<%=title%>" style="width: 90%;" >
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="content">Content:</label>
      <div class="col-sm-10">          
        <textarea name="content" rows="10" style="width: 90%;" wrap="physical" id="content">
          <%=rs.getString("content")%> 
        </textarea>
      </div>
    </div>
    <div class="form-group">        
       <label class="control-label col-sm-2" for="type">Type:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="type" name="type" value="<%=type%>" style="width: 90%;">
      </div>
    </div>
    <div class="form-group">        
       <label class="control-label col-sm-2" for="category">Category:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="category" name="category" value="<%=category%>" style="width: 90%;">
      </div>
    </div>
      
<%
}

   catch(SQLException e){
        out.print(e.getMessage());%><br><%
    }
    %>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" style="background-color:#2EE59D; margin-left: 780px;">Update</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>
