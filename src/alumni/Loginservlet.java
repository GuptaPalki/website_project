package alumni;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import java.sql.*;

	@WebServlet("/Loginservlet")
	public class Loginservlet extends HttpServlet{
		private static final long serialVersionUID = 1L;
	  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	    response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	        try{
	      String username= request.getParameter("user");
	      
	    // session.putValue("user",username);
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
	     }
	         catch (Exception e){
	      out.println(e);
	    }   
	        }
	}
