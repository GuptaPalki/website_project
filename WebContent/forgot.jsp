<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recover password</title>
</head>
<body>
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Recover Password</title>
<style>
input[type=text]{
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] ,input[type=reset] {
    background-color: teal;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type=button] {
    background-color: teal;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: teal;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body>
<script>
function preventback(){
	window.history.forward();
}
setTimeout("preventback()",0);
window.onunload=function(){ null };


function myfunc(){
	location.href = 'home.html';
}

</script>
<h3 class="w3-wide w3-text-teal w3-center w3-xxlarge">Recover Password</h3>

<div class="container">
  <form action="ChangePassword.jsp" method="post">
    <label>Username </label>
    <input type="text" name="user" required>
    <label>New Password </label>
    <input type="text" name="new" required>
    <label>Confirm new Password </label>
    <input type="text" name="cmp" required> 
   <input type="submit" value="Submit">
   <input name="Input2" type="reset" value="Clear">
   <input type="button" value="Back" onclick="myfunc()">
  </form>
</div>
                   
</body>
</html>
	