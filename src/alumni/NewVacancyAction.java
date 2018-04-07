package alumni;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java .sql.*;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NewVacancyAction")
public class NewVacancyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
		    PrintWriter out = response.getWriter();
		  //  boolean flag=false;
    		int vacancyid=0 ;
         String vacid1;
		        try{
		        	
		        	String companyname = request.getParameter("cname");
		    		String companyprofile = request.getParameter("profile");
		    		String vacancyposition = request.getParameter("pos");
		    		String jobdesc = request.getParameter("describe");
		    		String category = request.getParameter("category");
		    		String location = request.getParameter("location");
		    		String desiredprofile = request.getParameter("dprof");
		    		String desiredexperience = request.getParameter("ex");
		    		String createddate = request.getParameter("cdate");
		    	    String expirydate =request.getParameter("edate");
		    		String contactperson = request.getParameter("cp");
		    		String designation = request.getParameter("desig");
		    		String phoneno = request.getParameter("mob");
		    		String email = request.getParameter("em");
		    		 
		    	  Class.forName("com.mysql.jdbc.Driver");
		   	      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
		   	    Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select max(vac_id) from vacancy");
				
				if(rs.next())
				{ 	
				 vacancyid= Integer.parseInt(rs.getString(1));
				vacancyid++;
				}
		   	      
				PreparedStatement pst = con.prepareStatement("insert into vacancy(cname,profile,position,des,category,loc,dprof,ex,cdate,edate,cp,desig,mob,email,vac_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				pst.setString(1, companyname);
				pst.setString(2, companyprofile);
				pst.setString(3, vacancyposition);
				pst.setString(4, jobdesc);
				pst.setString(5, category);
				pst.setString(6, location);
				pst.setString(7, desiredprofile);
				pst.setString(8, desiredexperience);
				pst.setString(9, createddate);
				pst.setString(10, expirydate);
				pst.setString(11, contactperson);
				pst.setString(12, designation);
				pst.setString(13, phoneno);
				pst.setString(14, email);
				pst.setInt(15, vacancyid);
					
				int i=pst.executeUpdate();
				
				if(i!=0){
					ServletContext sc = getServletContext();
		    	  sc.getRequestDispatcher("/main.jsp").forward(request, response);
		             }
		        else{
		        	ServletContext sc = getServletContext();
		      	  sc.getRequestDispatcher("/job.html").forward(request, response);
		        }
				con.close();
		        }catch (Exception e){
		  	      out.println(e);
		        }
}
}