<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="admin.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<style>
table, th, td {
 
margin-top: 30px;
 text-align: left;


}
</style>
<script type="text/javascript">
  function checkbox() {
    // body...
    var cb1=document.getElementByNames("cb1");
    for(var i=0;i<cb1.length;i++)
    {
      if(cb1[i].type=='checkbox' && cb1[i].checked==true)
      {
        cb1+=cb1[i].value;
      }

    }
    //alert(cbs);
  }
  
</script>
<style type="text/css">
  .header {
  padding: 10px 16px;
  background: white;
  color: #f1f1f1;
  border-bottom: 1px solid black;
}


.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

</style>

</head>

<%@page import="java.sql.*"%>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs;
%>
<form name="frm">


<div>
  <div class="header" id="myHeader">
  <button class="button"  value="Delete" onclick="if (confirm('Are you sure you want to delete?')) form.action='deleteusers.jsp'; else return false"  style=" margin-left: 500px; margin-top: 2px;">Delete</button>
  </div>
  
  <table class="table table-hover" style="margin-top: 30px;">
  		<thead style="background-color: MediumSeaGreen; width: 100%;  ">
      <tr>
        <th></th>
  			
  			<th>Email</th>
  			<th>First Name</th>
  			<th>Last Name</th>
  			<th>Mobile</th>
  			<th>Date of Birth</th>
        <th>Gender</th>
        <th>Status</th>
       
       
        
  		</tr>
      </thead>
      <tbody>

       <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql:///pehchan_faridabad","root","root");
        ps=con.prepareStatement("select email,firstname,lastname,phone,dob,gender,status from signup");
        
        rs=ps.executeQuery();
    %>
    
    <%while(rs.next())
        {
            %>
    
      <tr style="text-align: left; >
      	<div style="display: inline-flex;">
      	<td><input type="checkbox" name="cb1" value="<%=rs.getString("email")%>"></td>
        
         <td><%out.print(rs.getString("email"));%></td>
         <td><%out.print(rs.getString("firstname"));%></td>
         <td><%out.print(rs.getString("lastname"));%></td>
         <td><%out.print(rs.getString("phone"));%></td>
          <td><%out.print(rs.getString("dob"));%></td>
           <td><%out.print(rs.getString("gender"));%></td>
            <td><%out.print(rs.getString("status"));%></td>
            
        
      </tr>
      <br>
      <%
    }%>
  
    </tbody>  
  </table>
</div>
      </form>
  <%}
   catch(SQLException e){
        out.print(e.getMessage());%><br><%
    }
    %>



   
  	




    </body>
    </html>