package alumni;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ForgotpswAction")
public class ForgotpswAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession s=request.getSession();
		 response.setContentType("text/html");
		    PrintWriter out = response.getWriter();
		        try{
		        	
		        	String username=(String)s.getAttribute("user");
		      //String username= request.getParameter("user");
		      String newpsw = request.getParameter("new");
		      String cmpsw = request.getParameter("cmp");
		      Class.forName("com.mysql.jdbc.Driver");
		      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
		        		  
		      if(!newpsw.equals(cmpsw)){
		    	   getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
		      }
		      else if(newpsw.equals("") || cmpsw.equals("")){
		    	   getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
		      }
		      
		      else{
		    	  /*Class.forName("com.mysql.jdbc.Driver");
			       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
			      		    
		      	  PreparedStatement pst = con.prepareStatement("update login set psw=? where user=?");
		    		  pst.setString(1,newpsw);
		    		  pst.setString(2,username);
		    		  ServletContext sc = getServletContext();
		    		  sc.getRequestDispatcher("/main.jsp").forward(request, response);*/
		    	  UserBean rb = new UserBean();
		          rb.setPassword(newpsw);
		          rb.setUserName(username);
		         
		          boolean flag=new ProfileDAO().changePassword(rb);
		         
		          if(flag==true)
		          {
		          	        	RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		          rd.forward(request,response);    
		          }        else{
		          	 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		          rd.forward(request,response); 
		          }   
		         

		    	    } 	    	  
		     }
		         catch (Exception e){
		      out.println(e);
		    }   
		        }


}
