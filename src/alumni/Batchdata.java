package alumni;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*; 
/**
  */
@WebServlet("/Batchdata")
public class Batchdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		String batchno=request.getParameter("batch");  
		int batch=Integer.valueOf(batchno); 
		try{  //getting Database Connection
	   	   	Class.forName("com.mysql.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
		    PreparedStatement ps=con.prepareStatement("SELECT name,company,city,email FROM login where batch=?");
		    ps.setInt(1,batch);  
		    out.print("<h3 w3-wide w3-text-teal w3-center w3-xxlarge>Alumni</h3>");
			out.print("<table border-collapse=collapse border-spacing=0 width=100% border = 1px solid black >");      
			ResultSet rs= ps.executeQuery();
		    out.print("<tr nth-child(even){background-color: #f2f2f2>");
		    out.print("<th>Name</th> <th>Company</th> <th>City</th> <th>Email</th>");
		    out.print("</tr>");
		    while(rs.next()){
		    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");		    	
	}
		}catch(Exception e){e.printStackTrace();}
}
}