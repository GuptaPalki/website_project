package alumni;

import java.sql.*;

  public class UserDAO 	
  {
     static Connection con ;
     static ResultSet rs ;  
	
     public static UserBean login(UserBean bean) {
	
        //preparing some objects for connection 
           
	
        String username = bean.getUsername();    
        String password = bean.getPassword();   
	    
        String searchQuery =
              "select * from login where user='"
                       + username
                       + "' AND psw='"
                       + password
                       + "'";
	    
     /*// "System.out.println" prints in the console; Normally used to trace the process
     System.out.println("Your user name is " + username);          
     System.out.println("Your password is " + password);
     System.out.println("Query: "+searchQuery);
	  */  
     try 
     {
   	  Class.forName("com.mysql.jdbc.Driver");
	      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
	     Statement stmt=con.createStatement();
        rs = stmt.executeQuery(searchQuery);	        
        boolean more = rs.next();
	       
        // if user does not exist set the isValid variable to false
        if (!more) 
        {
           System.out.println("Sorry, you are not a registered user! Please sign up first");
           bean.setValid(false);
        } 
	        
        //if user exists set the isValid variable to true
        else if (more) 
        {
                      bean.setValid(true);
        }
     } 

     catch (Exception ex) 
     {
        System.out.println("Log In failed: An Exception has occurred! " + ex);
     } 
	    
     //some exception handling
     finally 
     {
        if (rs != null)	{
           try {
              rs.close();
           } catch (Exception e) {}
              rs = null;
           }
	
        
	
        if (con != null) {
           try {
              con.close();
           } catch (Exception e) {
           }

           con = null;
        }
     }

return bean;
	
     }	
  }