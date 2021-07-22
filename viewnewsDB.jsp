<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="admin.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
.header {
  padding: 10px 16px;
  background:white;
  color: #f1f1f1;
  width: 100%;
  
}
.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}
</style>
<script type="text/javascript">
  function checkbox()
  {
    var cb=document.getElementByNames("cb");
    for(var i=0;i<cb.length;i++)
    {
      if(cb[i].type=='checkbox' && cb[i].checked==true)
      {
        cb+=cb[i].value;
      }

    }
  }
</script>

<script type="text/javascript">
  
  function myfun(){
    var update=document.getElementById("update");
  }
   function view(){
    var view=document.getElementById("view");
  }
 
</script>

</head>

<script type="text/javascript">
  var search;
  function doit_onkeypress(event)
  {
    if(event.keyCode == 13 || event.which == 13)
    {
     // alert("tyrutyie");
      info();
    }
  
  }
  function info()
  {
    //alert("ehwqindkans");
    search=document.getElementById("vaishali").value;
    window.location.href="viewnewsDB.jsp?value="+search;
  }
  
</script>

<%@page import="java.sql.*"%>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs;
%>
<body>

  <%
       String execute=request.getParameter("value");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad","root","root");
        if(execute==null)
        {
          ps=con.prepareStatement("select id,image_name,title,content,type,category from news");
        
         rs=ps.executeQuery();
        }
         else
        {
          ps=con.prepareStatement("select n.id,n.image_name,n.title,n.content,n.type,n.category from news n where (title like '%"+execute+"%' or content like '%"+execute+"%' or type like '%"+execute+"%' or category like '%"+execute+"%')");
          rs=ps.executeQuery();
        }
    %>

 <div class="header" id="myHeader" style="display: inline-flex;">
  
 <form>
<div>
  
   <button class="button"  value="Delete" onclick="if (confirm('Are you sure you want to delete?')) form.action='deletion.jsp'; else return false"  style=" margin-left: 650px; margin-top: 20px;">Delete</button>
    </div>

   </div>


  
  <table class="table table-hover">
  		<thead class="fixed_header" style="background-color: MediumSeaGreen; width: 100%; text-align: center;">
      <tr>
        <th><center></center></th>
  			<th><center>S.no.</center></th>
  			<th><center>Image</center></th>
  			<th><center>Title</center></th>
  			
  			<th><center>Type</center></th>
  			<th><center>Category</center></th>
       <th><center></center></th>
        <th><center></center></th>
  		</tr>
      </thead>
       <tbody>

     <%while(rs.next())
        {
            %>
    
      <tr style="text-align: left;" >
      	<td><input type="checkbox" name="cb" value="<%=rs.getInt("id")%>" ></td>
        
         <td><%out.print(rs.getInt("id"));%></td>
      	<td><img src="images/<%=rs.getString("image_name") %>" align="left" height=60px; width=100px;/>&nbsp;</td>
      	
         <td><%out.print(rs.getString("title"));%></td>
         
         <td><%out.print(rs.getString("type"));%></td>
         <td><%out.print(rs.getString("category"));%></td>

        <td> <button class="button" name="view" formaction="display.jsp"  onclick="view()" value="<%=rs.getInt("id")%>">View</button></td>
 <td> <button class="button" name="update" formaction="updatehtml.jsp" onclick="myfun()" value="<%=rs.getInt("id")%>"> Update</button></td>
       
      </tr>
      <br>
      <%
    }%>
  
    </tbody>  
  </table>
</form>

    
  <%}
   catch(SQLException e){
        out.print(e.getMessage());%><br><%
    }
    %>
    

<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>
</body>
  </html>