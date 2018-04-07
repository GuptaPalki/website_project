    <%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="alumni.UserBean"
    %>
    
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Main Page</title>
<style>
body{
font-family: "Poppins", sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: white;
}

.topnav a {
  float: center;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav .icon {
  display: none;
}

div::after {
  content: "";
  background: url("https://www.google.co.in/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiSivfT-O7UAhUaTY8KHSGyC-AQjRwIBw&url=https%3A%2F%2Fwww.gsa.europa.eu%2Fgsa%2Fjobs-opportunities&psig=AFQjCNFF5xkbsEG-ZzFadViKE_Pkjsqqtw&ust=1499234068023725");
  height:130%;
  opacity: 0.07;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  position: absolute;
  z-index: -1;  
   background-repeat: repeat-y;
    background-size: cover; 
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: center;
  }

}
.button {
  border-radius: 4px;
  background-color: teal;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 24px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.wel{
color:teal;
padding-left:15px;
padding-top:10px;
}
select {
    width: 60%;
    padding: 16px 20px;
    margin-left:10px; 
    margin-top:40px;
    border: none;
    border-radius: 4px;
    color:white;
    background-color: teal;
}
</style>
</head>
<body>
<div class="w3-top w3-conatiner" style="position:relative">
  <div class="w3-bar w3-white w3-card-2">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFun()"><i class="fa fa-bars"></i></a>
    <a href="profile.jsp" style="width:20%; margin-left:9px" class="w3-bar-item w3-hide-small w3-button w3-padding-large ">Update Profile</a>
      <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button w3"  title="Job">Job Opportunity</button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="job.html" class="w3-bar-item w3-button">Register For Vacancy</a>
        <a href="viewvacancydetail.jsp" class="w3-bar-item w3-button">View Vacancy Details </a>
      </div>
      </div>
      <button type="button" onclick="myFunction()" class="w3-padding-large w3-hide-small w3-teal w3-text-white w3-button" style="margin-left:50px">Logout</button>
   </div>
</div>
<!-- Navbar on small screens -->
<div id="nav" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="profile.jsp" class="w3-bar-item w3-button w3-padding-large">Update Profile</a>
  <a href="job.html" class="w3-bar-item w3-button w3-padding-large">Register for vacancy</a>
  <a href="viewvacancydetail.jsp" class="w3-bar-item w3-button w3-padding-large">View Vacancy Details </a>
  <button type="button" onclick="myFunction()" class="w3-padding-large w3-button ">Logout</button>
</div>
<br><br><br>
<!-- welcome -->
<% String loginid=(String)session.getAttribute("user");%>
<form method="post" >
<h3 class="w3-text-teal w3-wide w3-left w3-margin-left">Welcome <%=loginid %> !</h3>


<br>
  <label class="w3-padding "><b>Select batch :</b></label>
  <select id="batch" name="batch" "required>
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
  <button type="submit" name="input3" onclick="preventback()" class="w3-padding-large w3-button w3-black w3-text-white" value="Submit">Submit</button>
</form>

<script>
function myfunc() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

function preventback(){
	window.history.forward();
}
setTimeout("preventback()",0);
window.onunload=function(){ null };

function myFunction() {
    var txt;
    if (confirm("Click ok to confirm LOGOUT .") == true) {
    	txt="Logout Successfully !";
    	location.href='home.html';
    } else {
    	location.href='main.jsp';
    }
   
}

function myFun() {
    var x = document.getElementById("nav");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

</script>

</body>
</html>