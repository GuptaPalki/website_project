<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page
	import="alumni.UserBean,alumni.ProfileDAO,javax.servlet.http.HttpServlet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change password</title>
</head>
<body>
<% 
try{
	  
   		UserBean rb = new UserBean();
        rb.setPassword(request.getParameter("new"));
        rb.setUserName(request.getParameter("user"));
       String un=request.getParameter("user");
        boolean flag=new ProfileDAO().changePassword(rb);
       
        if(flag==true)
        {
        	 %>
        	  <form>
        	      <input type="text" name="user" value="un" >
        	  </form>
        	     <%   	RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
        rd.forward(request,response);    
        }       
        else{
        	 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.forward(request,response); 
        }   
       
       }catch(Exception e){} 
       
  %>
  <form>
      <input type="text" name="user" value="un" >
  </form>
</body>
</html>