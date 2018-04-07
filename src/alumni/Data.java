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

	@WebServlet("/Data")
	public class Data extends HttpServlet{
		private static final long serialVersionUID = 1L;
	  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	    response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	        try{
	      String email = request.getParameter("email");
	      String username= request.getParameter("user");
	      String branch = request.getParameter("branch");
	      String password = request.getParameter("psw");
	      String firstname= request.getParameter("fname");
	      String lastname= request.getParameter("lname");
	      String company = request.getParameter("company");
	      String country = request.getParameter("country");
	      String state = request.getParameter("state");
	      String city = request.getParameter("city");
	      String bdate = request.getParameter("bdate");
	      String contact = request.getParameter("contact");
	      String batch = request.getParameter("batch");

	      Class.forName("com.mysql.jdbc.Driver");
	      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
	      PreparedStatement pst = con.prepareStatement("insert into login(email,user,branch,psw,firstname,lastname,company,country,state,city,bdate,contact,batch) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	      pst.setString(1,email);
	      pst.setString(2,username);
	      pst.setString(3,branch);
	      pst.setString(4,password);
	      pst.setString(5,firstname);
	      pst.setString(6,lastname);
	      pst.setString(7,company);
	      pst.setString(8,country);
	      pst.setString(9,state);
	      pst.setString(10,city);
	      pst.setString(11,bdate);
	      pst.setString(12,contact);
	      pst.setString(13,batch);
	      int i= pst.executeUpdate();
	      if(i!=0){
	    	  ServletContext sc = getServletContext();
	    	  sc.getRequestDispatcher("/main.jsp").forward(request, response);
	             }
	        else{
	        	ServletContext sc = getServletContext();
	      	  sc.getRequestDispatcher("/login.jsp").forward(request, response);
	        }
	       con.close();
	     }
	         catch (Exception e){
	      out.println(e);
	    }   
	        }
	}
