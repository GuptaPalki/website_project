<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,alumni.VacancyDAO,alumni.VacancyDTO,alumni.DateWrapper" %>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>detail</title>
<style>
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid black;
}
input[type=button] {
    background-color: teal;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
th, td {
	color:teal;
    border: none;
    text-align: center;
    padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}
a{text-decoration:none;}
a:hover{
color:red;
}
</style>
</head>
<body>
<h3 class="w3-wide w3-text-teal w3-center w3-xxlarge">Vacancy Details</h3>    	  
<div style="overflow-x:auto;">
  <table>
 	<tr>
      <th>Company Name</th>
      <th>Vacancy Position</th>
      <th>Experience</th>
      <th>Expiry Date</th>
    </tr>

<%
int vacancyid=0;
try{
Class.forName("com.mysql.jdbc.Driver");
	      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
	      Statement st = con.createStatement();
	      ResultSet rs= st.executeQuery("select * from vacancy");
	      while(rs.next()){
	    	   vacancyid=Integer.parseInt(rs.getString(15));
	    	
	      %>
	    	  <tr>
              <td><span><a href="viewuservacdetailmain.jsp?vacancyid=<%=vacancyid%>"><%=rs.getString(1)%></a></span></td>
              <td><span><%=rs.getString(3)%></span></td>
              <td><span><%=rs.getString(8)%></span></td>
              <td><span><%=rs.getString(10)%></span></td>
            </tr>
             
	     <% }
	      }
catch(ClassNotFoundException e){e.printStackTrace();}
	    	  %>
	
                    </table></div>  
                    <div>
                     <tr> <td colspan="2"><label>
                                  <input type="button" value="Back" onclick="myfunc()">
                                  </label></td>
                                </tr>
                    </div> 
                    <script>
                    function myfunc(){
                    	location.href = 'main.jsp';
                    }
                    function preventback(){
                    	window.history.forward();
                    }
                    setTimeout("preventback()",0);
                    window.onunload=function(){ null };
 

                    </script>           
</body>
</html>