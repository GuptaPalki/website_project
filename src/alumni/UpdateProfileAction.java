package alumni;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;

import java.io.*;
import java.sql.*;

@WebServlet("/UpdateProfileAction")
public class UpdateProfileAction extends HttpServlet {
	Connection con;
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	         doPost(request,response); 
	    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		  HttpSession s = request.getSession();
			    PrintWriter out = response.getWriter();
			        try{
			        	 
			        	String loginid=(String)s.getAttribute("user");
				        String firstname= request.getParameter("fname"); 
				        String lastname=request.getParameter("lname"); 
				        String city=request.getParameter("city"); 
				        String state=request.getParameter("state"); 
				        String country=request.getParameter("country"); 
				        String company=request.getParameter("cname"); 
				        String email=request.getParameter("email"); 
			      
			      Class.forName("com.mysql.jdbc.Driver");
			      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
			      UserBean rb = new UserBean();
			      rb.setFirstName(firstname);
		          rb.setUserName(loginid);
		          rb.setLastName(lastname);
		          rb.setCity(city);
		          rb.setState(state);
		          rb.setCountry(country);
		          rb.setcompany(company);
		          rb.setem(email);
		          
		          boolean flag=new ProfileDAO().modifyProfile(rb);
			         
		          if(flag==true)
		          {
		          	        	RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		          rd.forward(request,response);    
		          }        else{
		          	 RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
		          rd.forward(request,response); 
		          }   
		          	    	  
		     }
		         catch (Exception e){
		      out.println(e);
		    }   
	} }    
			      /*  pst=con.prepareStatement("UPDATE login SET firstname=?,lastname=?,city=?,state=?,country=?,company=?,email=?  WHERE user=?");
	               pst.setString(1,firstname);
	               pst.setString(2,lastname);
	               pst.setString(3,city);
	               pst.setString(4,state);
		           pst.setString(5,country);
		           pst.setString(6,company);
		           pst.setString(7,email);
		           pst.setString(8,loginid);
		           out.print("request submitted"); 
			      int i= pst.executeUpdate();
			     if(i!=0){   
			    	// confirm("Profile Updated");
			    	//ServletContext sc = getServletContext();
			    	request.getRequestDispatcher("/main.jsp").forward(request, response);
			    	     }
			        else{
			        	//JOptionPane.showMessageDialog(null,"Profile not Updated");
			        	//ServletContext sc = getServletContext();
			        	request.getRequestDispatcher("/profile.jsp").forward(request, response);
				       }
			     
			       con.close();
			     }
			         catch (Exception e){
			      out.println(e);
			    }   
			        finally{
			            //finally block used to close resources
			            try{
			               if(pst!=null)
			                  con.close();
			            }catch(SQLException se){
			            }// do nothing
			            try{
			               if(con!=null)
			                  con.close();
			            }catch(SQLException se){
			               se.printStackTrace();
			            }}
			        }*/
			
          


