<%@include file="nocache.jsp" %>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="admin.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>


<body background="images/back.jpg" style="background-size: cover;">



	
    <center><p style="color: white; font-size: 50px; font-family: Palatino Linotype;">DASHBOARD</p></center>
    <form>
    <div class="container">
    	<div class="row">
 	<div class="wrap">
  <button class="button" formaction="viewusersDB.jsp">View Users</button>&nbsp;&nbsp;
  <button class="button" formaction="viewnewsDB.jsp">View News</button>&nbsp;&nbsp;
   <button class="button" formaction="#">View Education</button>&nbsp;&nbsp;
   <button class="button" formaction="#">View Lifestyle</button>&nbsp;&nbsp;
   <button class="button" formaction="#">View Travel</button>&nbsp;&nbsp;
   <button class="button" formaction="#">View Entertainment</button>&nbsp;&nbsp;
   <button class="button" formaction="#">View Government</button>&nbsp;&nbsp;
   <button class="button" formaction="#">View People</button>&nbsp;&nbsp;
</div>
</div>
<div class="row">
<div class="wrap">
  
  <button class="button" formaction="addnewshtml.html">Add News</button>&nbsp;&nbsp;
   <button class="button" formaction="#">Add Education</button>&nbsp;&nbsp;
   <button class="button" formaction="#">Add Lifestyle</button>&nbsp;&nbsp;
   <button class="button" formaction="#">Add Travel</button>&nbsp;&nbsp;
   <button class="button" formaction="#">Add Entertainment</button>&nbsp;&nbsp;
   <button class="button" formaction="#">Add Government</button>&nbsp;&nbsp;
   <button class="button" formaction="#">Add People</button>&nbsp;&nbsp;
</div>
</div>

<div class="row">
<div class="wrap" style="margin-top: 100px; margin-left: 480px;">
  
<button class="button" formaction="#">Log Out</button>
   
</div>
</div>
</div>
</form>

</body>
</html>