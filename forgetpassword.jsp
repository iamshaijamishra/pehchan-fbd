<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		function Visible() {
			// body...

			document.getElementById("check1").style.display="block";
		}
		function Visible1() {
			// body...

			document.getElementById("check2").style.display="block";
		}
	</script>
	<script type="text/javascript">
		var v=new XMLHttpRequest();
function sendotp() {

var y=document.getElementById("phone").value;
alert(y);
v.open("post","otp.jsp?phone="+y)
v.onreadystatechange=bResult;
v.send();
  
}
function bResult() {
	// body...
	
	if(v.readyState==4 && v.status==200)
	{ 
    alert("hello");
	document.getElementById("apply").style.visibility="visible";  
	 
		var i=v.responseText;
		alert(i);
		
	}
}

</script>
<script type="text/javascript">
	var k=new XMLHttpRequest();
	function verifyotp()
	{
		var x=document.getElementById("sotp").value;
		k.open("get","otpprocess.jsp?otpvalue="+x)
		//alert(x);
		k.onreadystatechange=otpresult;
		k.send();
	}

	function otpresult() {
		// body...
		if(k.readyState==4 && k.status==200)
		{
			var i =k.responseText;
			alert(i);
			if(i==1)
			{
			    window.location.href="forgetpasswordhtml.jsp";
			}
			else
			{

				alert("wrong otp");
			}
		}
	}
</script>
<script type="text/javascript">
  var v=new XMLHttpRequest();
  function vemail()
  {
    var y=document.getElementById("email").value;
alert(y);
v.open("post","Email.jsp?email="+y)
v.onreadystatechange=bringResult();
v.send();
//alert(session);
  }

  function bringResult() {
  // body...
  document.getElementById("sp1").style.visibility="visible";
  if(v.readyState==4 && v.status==200)
  { 
    
  
 // document.getElementById("sbuttn").style.visibility="visible";  
   
    //var i=v.responseText;
    //alert(i);
    
  }
}

</script>
<script type="text/javascript">
  var k=new XMLHttpRequest();
  function votp()
  {
    var x=document.getElementById("eotp").value;
    k.open("post","everify.jsp?otpvalue="+x)
    //alert(x);
    k.onreadystatechange=verotp;
    k.send();
  }

  function verotp() {
    // body...
    if(k.readyState==4 && k.status==200)
    {
      var i =k.responseText;
      alert(i);
      if(i==1)
      {
          alert("verified");
          //k.open("post","index.html");
          
         document.getElementById("status").value=1;
         alert("done");
         window.location.href="forgetpasswordhtml.jsp";

      }
      else
      {
        //document.getElementById("status").value =0;
        alert("wrong otp");
      }
    }
  }
</script>
</head>
<body>
  <%
      String email=(String)request.getParameter("email");
      session.setAttribute("email",email);
  %>

	<form>
  <div style="display: inline;">
  <button type="button" id="phn" onclick="Visible()">Phone</button>&nbsp;&nbsp;
  		<br><br>

   	<span id="check1" style="display: none;">
      <input type="text" id="phone" placeholder="Enter Mobile No." name="phone" required>
      <br><br>
      <button type="button" onclick="sendotp()">Send Otp</button>
     </span>
     <br><br>

     <span id="apply" style="visibility: hidden;">   
      <input type="text" id= "sotp" placeholder="Enter OTP..." name="otp" required>
      <br><br>
      <button type="button" onclick="verifyotp()">Verify Otp</button>
  </span>


	
		 <button type="button" id="emailid" onclick="Visible1()">Email</button>&nbsp;&nbsp;
  		<br><br>
  		<span id="check2" style="display: none;">
  		<label for="email">Email</label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="email" id="email" name="email" placeholder="Your email.." required>
      <button  id="ver" type="button" onclick="vemail()" >Verify</button>
       <span  id="sp1" style="visibility: hidden;">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="number"  id="eotp" name="otp" placeholder="Your otp..">
      <button  id="sbuttn" type="button" onclick="votp()" >Submit</button>
      <input type="hidden"  id="status"  name="status" value="0">
    </span>
  </span>

</div>
	

      
  </form>
</body>
</html>