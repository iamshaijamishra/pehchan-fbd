
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body background="images/nasa.jpg">
	<%
		String phone=(String)request.getParameter("phone");
		session.setAttribute("phone",phone);
	%>


<div class="container" style="padding-top: 120px; padding-left: 290px;">

  <form action="forgetpasswordDB.jsp">
  	
  	<br>
    <div class="form-group" style="color: white;">
      <label for="password">New Password:</label>
      <input type="password" class="form-control" id="password" placeholder="New Password" name="npassword" style="width: 60%;">
    </div>
    <div class="form-group" style="color: white;">
      <label for="pwd">Confirm Password:</label>
      <input type="password" class="form-control" id="cpassword" placeholder="Confirm password" name="cpassword" style="width: 60%;">
    </div>
    
    <button type="submit" class="btn btn-primary" style="margin-left: 200px;">Submit</button>
  </form>
</div>

</body>
</html>
