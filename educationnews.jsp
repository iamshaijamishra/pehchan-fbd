<%@page import="java.sql.*;"%>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="signup.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>


<body> 
	
	<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal1) {
    modal.style.display = "none";
  }
}
</script>

	<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
	<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginRight = "250px";
}
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginRight= "0";
}
function like() {
 if(document.getElementById("like").style.color == "black")
{
	document.getElementById("like").style.color = "red";
}
else
{
	document.getElementById("like").style.color = "black";
}
}

function bookmark() {
 if(document.getElementById("book").style.color == "black")
{
	document.getElementById("book").style.color = "blue";
}
else
{
	document.getElementById("book").style.color = "black";
}
}

function lclose()
{
	document.getElementById("id01").innerHTML= document.getElementById("id02").innerHTML;
}



</script>
   
   
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
   
	<!-- Just an image -->

<!-- Image and text -->

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <nav class="navbar navbar-light bg-light">
  
    <img src="images/report.svg" width="50" height="50" class="d-inline-block align-top" alt="">
   &nbsp;Pehchan Faridabad
  
</nav>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
       <nav class="navbar navbar-light bg-light">
       	<div class="zoom">
  <a class="navbar-brand" href="index.jsp">
    <img src="images/home.svg" width="50" height="50" class="d-inline-block align-top" alt="">
    
  </a>
</div>
</nav> <span class="sr-only">(current)</span>
    
           <nav class="navbar navbar-light bg-light">
  <div class="zoom">
  <a class="navbar-brand" href="educationnews.jsp">
    <img src="images/newspaper.svg" width="50" height="50" alt="">
  </a>
</div>
</nav>
     
      
     <nav class="navbar navbar-light bg-light">
     	<div class="zoom">
  <a class="navbar-brand" href="indianews.jsp">
    <img src="images/india.svg" width="50" height="50" alt="">
  </a>
</div>
</nav>
    
    
    <nav class="navbar navbar-light bg-light">
    	<div class="zoom">
  <a class="navbar-brand" href="entertainmentnews.jsp">
    <img src="images/video-camera.svg" width="50" height="50" alt="">
  </a>
</div>
</nav>
<nav class="navbar navbar-light bg-light">
  <div class="zoom">
  <a class="navbar-brand" href="cricketnews.jsp">
    <img src="images/trophy.svg" width="50" height="50" alt="">
  </a>
</div>
</nav>
      
      
       <nav class="navbar navbar-light bg-light">
  	<div class="zoom">
  <a class="navbar-brand" href="technologynews.jsp">
    <img src="images/project-management.svg" width="50" height="50" alt="">
  </a>
</div>
</nav>
      <nav class="navbar navbar-light bg-light">
  <div class="zoom">
  <a class="navbar-brand" href="businessnews.jsp">
    <img src="images/graph.svg" width="50" height="35" alt="">
  </a>
</div>
</nav>
      
  	<nav class="navbar navbar-light bg-light">
  <div class="zoom">
  <a class="navbar-brand" href="#">
    <img src="images/search.svg" width="50" height="50" alt="">
  </a>
</div>
</nav>


<!--<nav class="navbar navbar-light bg-light">
  <div class="zoom">
  <a onclick="document.getElementById('id01').style.display='block'" class="navbar-brand" href="#">
    <img src="C:\Users\Bhavansh Aggarwal\Desktop\pehchan fbd\images\man-user.svg" width="50" height="50" alt="">
  </a>
</div>
</nav>-->
			<!--popup login page-->

	<form action="login.html">
   <button type="submit" style="width: auto;">Login</button> 
  </form>
        

      		<!-- start signup pop up-->

      	
      		<!--end sign up pop up-->

     


   			<!--end pop up login-->


    
     <div class="new"> 
    <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="adminlogin.html">Admin</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>


<div id="main" class="zoom">
  
  <span style="font-size:30px;cursor:pointer;align:right;" onclick="openNav()" align>&#9776; </span>
	</div>
	</div>          <!--class new div closed-->
    
 

 
</nav>
</div>



<div class="slider">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/rose.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/pink.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/pink1.jpg" class="d-block w-100" alt="...">
    </div>
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>


<!--grid-->
<div class="container-fluid" style="overflow: auto;">
  <div class="row">
    <div class="col-md-3">
    <h2 class="border-4">BREAKING NEWS</h2>
    <div class="marquee-tag">
    	<marquee  behavior="scroll" direction="up">
    	
    		1.Shikhar Dhawan ruled out of world cup as a result of thumb fracture in the last game.<br>
    		<br>
  	2.Rishabh Pant to take over Dhawan in the World Cup 2019.
    	
    	<br>
    		<br>3.IND vs NZ match abandoned due to rain.
    	
    </marquee>
   </div>
   
    </div>
    <div class="col-md-5" style="margin-left: 39px; overflow: auto;">
   <h2 class="border-4">LATEST NEWS</h2>

   <div class="container">
  
  <table class="table table-hover">

       <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
            "jdbc:mysql:///pehchan_faridabad","root","root");
             PreparedStatement ps; 
        ps=con.prepareStatement("select category,id,image_name,title from news where category=?");
        ps.setString(1,"education");
        ResultSet rs=ps.executeQuery();
        
        
    %>
    
    <%while(rs.next())
        {
            %>
    
      <tr style="text-align: right;" valign="middle">
      	<div style="display: inline-flex;">
      	<img src="images/<%=rs.getString("image_name") %>" align="left" height=60px; width=120px;/>&nbsp;
      	
        <a href="display.jsp?id=<%=rs.getInt("id")%>"> <%out.print(rs.getString("title"));%></a></div>
      </tr>
      <br>
      <%
    }%>
      
      
  </table>
  <%}
   catch(SQLException e){
        out.print(e.getMessage());%><br><%
    }
    %>
</div>
   
  	



    </div>

    <div class="col-md-3" style="overflow: auto;">
	   <a class="weatherwidget-io" href="https://forecast7.com/en/28d4177d32/faridabad/" data-label_1="FARIDABAD" data-label_2="WEATHER" data-mode="Current" data-theme="weather_one" >FARIDABAD WEATHER</a>
<script>
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
</script>
	    </div>
	  </div>
</div>

<br>

<!-- Footer -->
<footer class="page-footer font-small blue pt-4" >


  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <h5 class="text-uppercase">About Us</h5>
        <p>This website is updated and if you want to updated then sign up.</p>
        <!-- Copyright -->
  <div class="footer-copyright text-md-left  mb-3 py-3">© 2018 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/" 
    style="color: #0033CC"> Codelipi Infotech Pvt. Ltd.</a>
  </div>
  <!-- Copyright -->


      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase">CONTACT</h5>

        <ul class="list-unstyled">
          <li>
            
          <p><i class="fa fa-home"></i> New York, NY 10012, US</p>
      
          </li>
          <li>
            <p>
          <i class="fa fa-envelope"></i> info@example.com</p>
          </li>
          <li>
            <p>
          <i class="fa fa-phone"></i> + 01 234 567 88</p>
        <p>
          </li>
          
        </ul>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase">Follow us on </h5>

        <ul class="list-unstyled" >
         <div class="links">
          <li>
            <nav class="text-muted">
            	
			<div class="zoom">
  <a class="navbar-brand" href="#" style="color: #0033CC; padding-left: 20px;">
    <img src="images/facebook.svg" width="30" height="30" alt="">
  </a>
</div>
</nav>
          </li>
          <li>
            <nav class="text-muted">
            	<div class="zoom">
  <a class="navbar-brand" href="#" style="color: #0033CC">
    <img src="images/twitter.svg" width="30" height="30" alt="">
  </a>
</div>
</nav>

          </li>
         </div>
         <div>
          <li>
          	<div class="zoom">
            <a class="navbar-brand" href="#" style="color: #0033CC">
    <img src="images/gmail.svg" width="30" height="30" alt="">
  </a>
</div>
          </li>
          <li>
          	<div class="zoom">
             <a class="navbar-brand" href="#" style="color: #0033CC">
    <img src="images/google-plus.svg" width="30" height="30" alt="">
  </a>
</div>
          </li>
      </div>
        </ul>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  
</footer>
<!-- Footer -->
</body>


</script>
</html>