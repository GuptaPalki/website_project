<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="alumni.UserBean,alumni.ProfileDAO ,java.io.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Personal info</title>
<style>
input[type=text], select, textarea ,input[type=email]{
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] ,input[type=reset],input[type=button] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid black;
}

th, td {
	color:teal;
    border: none;
    text-align: center;
    padding: 8px;
}
input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
    width: 40%;
    border-radius: 50%;
}
</style>
</head>
<body>
<h3 class="w3-wide w3-text-teal w3-center w3-xxlarge">Profile</h3>

<!-- <div class="imgcontainer">
    <img src="https://www.google.co.in/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwil7uLWsvDUAhUIPI8KHcP7DusQjRwIBw&url=https%3A%2F%2Fpixabay.com%2Fen%2Favatar-icon-placeholder-1577909%2F&psig=AFQjCNFrh0L3CRJaCdJtYn7GSpgX2HeiQQ&ust=1499284066444893" alt="Avatar" class="avatar">
</div>-->
<%

String username=(String)session.getAttribute("user");

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
    Statement st = con.createStatement();
    String QueryString = "SELECT * from login where user='"+username+"'";
    ResultSet rs = st.executeQuery(QueryString);
    if(rs.next()){
                     
%>
 <form action="UpdateProfileAction" method="POST">
 <table>
<tr>

<tr><td>First Name</td><td><input type="text" name="fname" value="<%=rs.getString(5)%>" required></td></tr>
<tr><td>Last Name</td><td><input type="text" name="lname" value="<%=rs.getString(6)%>" required></td></tr>
<tr><td>City </td><td><input type="text" name="city"  required></td></tr>
<tr><td>State</td><td><input type="text" name="state" required></td></tr>
<tr><td>Country</td><td><input type="text" name="country"  required></td></tr>
<tr><td>Company Name</td><td><input type="text" name="cname" required></td></tr>
<tr><td>Email</td><td><input type="email" placeholder="Enter email" name="email" required></td></tr>

<tr><td><input name="Input" type="submit" value="Update">
</td></tr>
<%}
    }catch(Exception ex){out.println(ex); }%>
</table>
</form>


</script>
</body>
</html>