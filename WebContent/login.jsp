<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>login</title>
<style>

/* Full-width input fields */
input[type=text], input[type=password],input[type=email]  {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border-bottom: 0.5px solid teal;
    border-top-style: none;
    border-left-style: none;
    border-right-style: none;
}
/* Set a style for all buttons */
button {
    background-color: teal;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: grey;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {float:left;width:50%}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    color: #000;
    font-size: 40px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}
.ps{
float:right;
text-decoration:none;
}
.ps:hover,.ps:focus{
color: red;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 50%;
    }
    span.ps{
    	display:block;
    	float:none;
          }
}
select{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    border-color:teal
    box-sizing: border-box;
}
.create{border: 1px solid light-grey;
		 background-color:light-grey;}
.st{opacity:0.5;}
.login{font-family: "Poppins", sans-serif
		}
</style>
</head>
<body>
<!-- Navbar -->
<div class="w3-top w3-conatiner ">
  <div class="w3-bar w3-white w3-card-2">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()"><i class="fa fa-bars"></i></a>
   	<img class="w3-hide-small w3-left w3-rectangle" src="http://www.ncuindia.edu/templates/city_innovates/images/logooo.png" style= "width:30% height:50px">
    <a href="home.html" style="width:20%" class="w3-bar-item w3-button w3-padding-large w3-orange">Home</a>
    <a href="aboutus.html" style="width:20%" class="w3-bar-item w3-button w3-padding-large w3-hide-small">About  Us</a>
    <div class="w3-dropdown-hover w3-hide-small ">
      <button class="w3-padding-large w3-button w3-white" title="alumni">Alumni  Directory</button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="login.jsp" class="w3-bar-item w3-button">Login/ Register</a>
        <a href="gallery.html" class="w3-bar-item w3-button">Gallery</a>
       </div>
    </div>
      <a href="viewvacancydetail.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large">Job Opportunity</a>
    </div>
</div>
<!-- Navbar on small screens -->
<div id="nav1" class="w3-bar-block w3-orange w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="aboutus.html" class="w3-bar-item w3-button w3-padding-large">About Us</a>
  <a href="login.jsp" class="w3-bar-item w3-button w3-padding-large">Login/Register</a>
  <a href="gallery.html" class="w3-bar-item w3-button w3-padding-large">Gallery</a>
  <a href="viewvacancydetail.jsp" class="w3-bar-item w3-button w3-padding-large">Job Opportunity</a>
</div>
<!-- page content --> 

<div class="login w3-container w3-content " style="margin-top:20px" >
	<h2 class=" w3-xxlarge w3-bold w3-text-teal w3-center " style="margin-top:90px">Create  an  account  or  sign  in</h2>
	<h6 class="st w3-center">You need to be a member in order to explore the website</h6>
	<br>
	<div class="w3-container create">
	<h3 class=" w3-xlarge w3-text-teal w3-center">Create  an  account</h3>
	<h6 class="st w3-center">It's easy!</h6>
	<button type="button" onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-block w3-orange">Register a new account</button>
	 <br><h3 class=" w3-xlarge w3-text-teal w3-center">Sign in</h3>
	<h6 class="st w3-center">Already have an account? Sign in here.</h6> 
    <p><button type="button" onclick="document.getElementById('signin').style.display='block'" class="w3-button w3-block w3-orange">Sign in now</button></p>
 	</div>
</div>
<div id="id01" class="modal">
<div class="w3-container ">-
      <i onclick="document.getElementById('id01').style.display='none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right"></i>
  
  <form class="modal-content animate" style="padding:32px" action="Data" method="POST">
  <h2 class="w3-wide w3-text-teal">Register</h2>
    <div class="container login">
      <label>Email</label>
      <input type="email" placeholder="Enter Email" name="email" required>
      
      <label>First Name</label>
      <input type="text" placeholder="Enter firstname" name="fname" required>
      
       <label>Last Name</label>
      <input type="text" placeholder="Enter lastname" name="lname" required>
      
       <label>Birth Date</label>
      <input type="text" placeholder="Enter DOB" name="bdate" required>
       
        <label>City</label>
      <input type="text" placeholder="Enter city" name="city" required>
      
       <label>State</label>
      <input type="text" placeholder="Enter state" name="state" required>
      
       <label>Country</label>
      <input type="text" placeholder="Enter country" name="country" required>
     
     <label>Company</label>
      <input type="text" placeholder="Enter company name" name="company" required>
     
       <label>Branch </label>
      <select id="branch" name="branch" required>
 	 <option value="me">MECHANICAL</option>
   	 <option value="cse">CSE</option>
   	 <option value="ece">ECE</option>
   	 <option value="bscM">BSC(Maths)</option>
   	 <option value="bba">BBA</option>
   	 <option value="law">LLB</option>
   	 </select>
      <br><br>
      <label>Batch </label>
  <select id="batch" name="batch" required>
  <option value=""></option>
    <option value="1996">1996</option>
  <option value="1997">1997</option>
  <option value="1998">1998</option>
  <option value="1999">1999</option>
  <option value="2000">2000</option>
    <option value="2001">2001</option>
  <option value="2002">2002</option>
  <option value="2003">2003</option>
    <option value="2004">2004</option>
    <option value="2005">2005</option>
  <option value="2006">2006</option>
  <option value="2007">2007</option>
  <option value="2008">2008</option>
  <option value="2009">2009</option>
    <option value="2010">2010</option>
  <option value="2011">2011</option>
  <option value="2012">2012</option>
 <option value="2013">2013</option>
  <option value="2014">2014</option>
  <option value="2015">2015</option>
  <option value="2016">2016</option>
  </select>
    <br><br>
    <label>Contact No.</label>
      <input type="text" placeholder="Enter your contact no. registered in college " name="contact" required>
      
    
       <label>Username</label>
      <input type="text" placeholder="Enter username" name="user" required>
      
      <label>Password</label>
      <input type="password" placeholder="Enter Password" name="psw" required>
      <input type="checkbox" checked="checked"> Remember me
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" value="Submit" class="signupbtn" onclick="preventback()">Sign Up</button>
      </div>
    </div>
  </form>
</div>
</div>

<!-- sign in model -->
<div id="signin" class="modal">
<div class="w3-container">
      <i onclick="document.getElementById('signin').style.display='none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right"></i>
  
  <form class="modal-content animate" style="padding:32px" action="Loginaction.jsp" method="post">
  <h2 class="w3-wide w3-text-teal">Sign in</h2>
    <div class="container login">
      <label>Username</label>
      <input type="text" placeholder="Enter username" name="user" required>
      
      <label>Password</label>
      <input type="password" placeholder="Enter Password" name="psw" required>
      <div>
      <button type="submit" value="Submit" class="signupbtn" onclick="preventback()">Sign in</button>
      <span class="ps w3-text-teal">Forgot <a class="w3-text-teal" href="forgot.jsp">Password?</a></span>
      </div>
    </div>
  </form>
</div>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var modal = document.getElementById('signin');

//When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
 if (event.target == modal) {
     modal.style.display = "none";
 }
}

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000);    
}
function myFunction() {
    var x = document.getElementById("nav1");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

function preventback(){
	window.history.forward();
}
setTimeout("preventback()",0);
window.onunload=function(){ null };
</script>

</body>
</html>
    