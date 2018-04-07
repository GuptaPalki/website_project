package alumni;
		import java.sql.*;
		import java.sql.Connection;
		import java.sql.PreparedStatement;
		import java.sql.ResultSet;
		import java.sql.SQLException;
		import java.sql.Statement;
		public class ProfileDAO extends DataObject{

		    static Connection con;
			private boolean flag;
			public ProfileDAO() 
		    {
		         try{  //getting Database Connection
				Class.forName("com.mysql.jdbc.Driver");
			       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
		         }
		         catch(Exception e){}
		         finally{}
		     }
			public boolean changePassword(UserBean regbean)
		    {
		        String loginid=regbean.getUsername();
		        String newpassword=regbean.getPassword();
		       // String newpassword=regbean.getNePassword();
		        try 
		        {
		            con.setAutoCommit(false);
		           
		            PreparedStatement pst=con.prepareStatement("UPDATE login SET psw=? WHERE user=? ");
		            
		            pst.setString(1,newpassword);
		           
		            pst.setString(2,loginid);
		           
		            
		            int i=pst.executeUpdate();
		            if(i==1)
		            {
		                flag=true;
		                con.commit();
		            }
		            else
		            {
		                flag=false;
		                con.rollback();
		            }
		        } 
		     		        catch (Exception e) 
		        {
		            e.printStackTrace();
		            
		        }
		        return flag;        
		    }
		    
		    
		public UserBean getProfile(String loginname){
			UserBean rb=null;;
			try{
			       	       
		         Statement st = con.createStatement();
		           ResultSet rs = st.executeQuery("select ld.firstname,ld.lastname from login ld where ld.user='"+loginname+"'");
		           if(rs.next())
		           {
		        	   rb=new UserBean();
		        	   rb.setUserName(loginname);
		        	   rb.setFirstName(rs.getString(1));
		        	   rb.setLastName(rs.getString(2));
		        	   }
		        }
		        catch(Exception e)
		        {
		        			        }
		        return rb;
		    } 
		    
		    // Modify Profile
		    public boolean modifyProfile(UserBean regbean)
		    {
		        String loginid=regbean.getUsername();
		        String city=regbean.getCity();
		        String state=regbean.getState();
		        String country=regbean.getCountry();
		        String company=regbean.getcompany();
		        String email=regbean.getem();
		        String firstname=regbean.getFirstName();
		        String lastname=regbean.getLastName();
		        
		        
		        try 
		        {
				      
		            con.setAutoCommit(false);
		            PreparedStatement pst=con.prepareStatement("UPDATE login SET firstname=?,lastname=?,city=?,state=?,country=?,company=?,email=?  WHERE user=?");
		            pst.setString(1, firstname);
		            pst.setString(2, lastname);
		            pst.setString(3,city);
		            pst.setString(4,state);
		            pst.setString(5,country);
		            pst.setString(6,company);
		            pst.setString(7,email);
		            pst.setString(8,loginid);
		           		            
		            int i=pst.executeUpdate();
		            
		            if(i!=0)
		            {
		                flag=true;
		                con.commit();
		            }
		            else
		            {
		            		flag=false;
		            		con.rollback();
		            }
		            
		        } 
		        catch (SQLException ex) 
		        {
		        	ex.printStackTrace();
		           
		            flag=false;
		            try 
		            {
		                con.rollback();
		            } 
		            catch (SQLException se) 
		            {
		              
		            }
		        }
		        catch (Exception e) 
		        {
		        	//LoggerManager.writeLogSevere(e);
		            flag=false;
		            try 
		            {
		                con.rollback();
		            } 
		            catch (SQLException se) 
		            {
		          //  	LoggerManager.writeLogSevere(se);
		            }
		        }
		        return flag;
		    }
		    
		    
		    		}