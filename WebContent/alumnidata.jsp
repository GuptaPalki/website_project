<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="alumni.UserBean"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data Display</title>
<style>
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
tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<body>
<h3 class="w3-wide w3-text-teal w3-center w3-xxlarge">Alumni</h3>
<div style="overflow-x:auto;">
  <table>
 	<tr>
      <th>Name<th>
      <th>Company</th>
      <th>City </th>
      <th>Email</th>
    </tr>

    <% UserBean currentUser = (UserBean)session.getAttribute("currentSessionUser"); %>
    <% int st = currentUser.getbatch(); %>
    
 <% try{  //getting Database Connection
		   	   	Class.forName("com.mysql.jdbc.Driver");
			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
			    Statement s=con.createStatement();
			    String sql ="SELECT * FROM login where batch="+st;   
			    ResultSet rs= s.executeQuery(sql);
			    while(rs.next()){
%>
			    <tr>
			    <td><%=rs.getString(5) %></td>
  				<td><%=rs.getString(7) %></td>
				<td><%=rs.getString(10) %></td>
			    <td><%=rs.getString(1) %></td>
			    </tr>
 <%}
 }	catch(Exception e){
        	e.printStackTrace();
        }
	%></table></div>	        
</body>
</html>