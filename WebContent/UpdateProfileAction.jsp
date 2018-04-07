<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection, alumni.ProfileDAO,alumni.UserBean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Profile Update</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
	</head>
	<body>
<br>
		<%  //boolean flag=false;
		try 
        {  
			UserBean rb = new UserBean();
	        
	        rb.setUserName(request.getParameter("user"));
	        rb.setFirstName(request.getParameter("firstname")); 
	        rb.setLastName(request.getParameter("lastname")); 
	        rb.setCity(request.getParameter("city")); 
	        rb.setState(request.getParameter("state")); 
	        rb.setCountry(request.getParameter("country")); 
	        rb.setcompany(request.getParameter("company")); 
	        rb.setem(request.getParameter("email")); 
	        
	        boolean flag=new ProfileDAO().modifyProfile(rb);
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
	        	 RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
	        rd.forward(request,response); 
	        }   
	       
	       }catch(Exception e){} 
	       
	  %>
	        
			
		       <!--  String loginid=(String)session.getAttribute("user");
		        String firstname= request.getParameter("firstname"); 
		        String input= request.getParameter("Input"); 
		        String lastname=request.getParameter("lastname"); 
		        String city=request.getParameter("city"); 
		        String state=request.getParameter("state"); 
		        String country=request.getParameter("country"); 
		        String company=request.getParameter("company"); 
		        String email=request.getParameter("email"); 
		        
		           Class.forName("com.mysql.jdbc.Driver");
			       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
				     
	               PreparedStatement pst=con.prepareStatement("UPDATE login SET firstname=?,lastname=?,city=?,state=?,country=?,company=?,email=?  WHERE user=?");
	               pst.setString(1, firstname);
	               pst.setString(2,lastname);
	               pst.setString(3,city);
	               pst.setString(4,state);
		           pst.setString(5,country);
		           pst.setString(6,company);
		           pst.setString(7,email);
		           pst.setString(8,loginid);
		           		            
		           int i=pst.executeUpdate();
		            
		            if(i!=0)
		            {
	                  
		            }
		            else
		            {
		            	
		       
		           } 
		        }  
		            catch (SQLException ex) 
		        {
		        	ex.printStackTrace(); 
		        }-->
		        
       </body>
</html>

        
   