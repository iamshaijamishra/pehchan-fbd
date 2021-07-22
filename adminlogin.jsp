<%@include file="nocache.jsp" %>
<!DOCTYPE html>
<html>
<style>
input[type=email], select {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
div{
  margin-left: 40px;
  margin-top: 180px;
}

</style>
<body background="images/admin.jpg" style="background-size: cover;">


<div>
  <form action="admincheck.jsp">
    <label for="email" style="color: white; font-family: Sans-serif; font-size: 25px;">Email:</label>
    <input type="email"  name="email1" placeholder="Admin email.." required>

    <label for="password" style="color: white; font-family: Sans-serif; font-size: 25px;">Password:</label>
    <input type="password" name="password1" placeholder="Admin Password.." required>

   
  
    <input type="submit" value="Submit" style="margin-left: 100px;">
  </form>

</div>
</body>
</html>
