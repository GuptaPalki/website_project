<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="alumni.UserBean,alumni.ProfileDAO ,java.io.*,java.sql.*,javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login action</title>
</head>
<body>
<% String username=request.getParameter("user");
session.putValue("user",username);
String password = request.getParameter("psw");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
Statement st = con.createStatement();
ResultSet rs= st.executeQuery("select * from login where user='"+username+"'");
if(rs.next()){
	  
	  if(rs.getString(4).equals(password)){
		  ServletContext sc = getServletContext();
		  sc.getRequestDispatcher("/main.jsp").forward(request, response);
	    } 
  else{
  	  ServletContext sc = getServletContext();
	  sc.getRequestDispatcher("/login.jsp").forward(request, response);
      }
	  
}
 con.close();

%>
</body>
</html>