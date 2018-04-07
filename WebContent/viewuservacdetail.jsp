<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,alumni.VacancyDAO,alumni.VacancyDTO,alumni.DateWrapper" %>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>vacancy user detail</title>
<style>

div::after {
  content: "";
  background: url("https://www.google.co.in/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwjD0KHH8-3UAhXLso8KHfSRBX4QjRwIBw&url=http%3A%2F%2Fcaribbeannewsservice.com%2Fnow%2Fworld-bank-job-opportunities-for-caribbean-nationals%2F&psig=AFQjCNFXUSaOEJ-CWKAv73qVJShSw8i4Rg&ust=1499198413934142");
  height:130%;
  opacity: 0.07;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  position: absolute;
  z-index: -1;  
   background-repeat: repeat-y;
    background-size: cover; 
}
<BODY bgColor=#ddd leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
.style37 {color: black; font-weight: bold; font-size: 14px; font-family: Arial, Helvetica, sans-serif; }
input[type=button] {
    background-color: teal;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
th, td {
	color:teal;
}
</style>
</head>
<body>
 <h3 align="center" class="w3-wide w3-xxlarge w3-text-teal">Opportunity Details</h3>
                           
  
                        <%
                            String vacancyid = request.getParameter("vacancyid");
                        try{
                        	Class.forName("com.mysql.jdbc.Driver");
                        		      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/alumni","root","palkigupta");
                        		      Statement st = con.createStatement();
                        		      ResultSet rs= st.executeQuery("select * from vacancy where vac_id="+vacancyid);
                        		      while(rs.next()){         
                         %>
                         <input type="hidden" name="vacancyid" value="<%=Integer.parseInt(rs.getString(15))%>"/>    
                        <table width="662" border="0" align="center" bordercolor="#CD817E" >
                          <tr>
                            <td width="11" height="57" valign="top"></td>
                           <td width="10"></td>
                          </tr>
                          <tr>
                            <td align="right"></td>
                            <td><table width="642" height="655" border="0" align="center">
                                <tr>
                                  <td width="134" height="38"><span class="w3-text-teal">Company Name</span></td>
                                  <td width="498"><span class="style37"><%=rs.getString(1)%></span></td>
                                </tr>
                                <tr>
                                  <td height="37"><span class="w3-text-teal">Profile</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(2)%></label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="40"><span class="w3-text-teal">Vacancy Position</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(3)%>  </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="69"><span class="w3-text-teal">Description</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(4)%>                                      </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="36"><span class="w3-text-teal">Category</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(5)%>                                      </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="37"><span class="w3-text-teal">Location</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(6)%>                                      </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="41"><span class="w3-text-teal">Desired Profile</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(7)%> </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="41"><span class="w3-text-teal">Experience</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(8)%>                                      </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="36"><span class="w3-text-teal">Created Date</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(9)%>                                      </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="37"><span class="w3-text-teal">Expiry Date</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(10)%>                                      </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="39"><span class="w3-text-teal">Contact Person</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(11)%>                                      </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="40"><span class="w3-text-teal">Designation</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(12)%>                                      </label>
                                  </span></td>
                                </tr>
                                <tr>
                                  <td height="39"><span class="w3-text-teal">Phone</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(13)%>                                      </label>
                                  </span></td>
                                </tr>
                                 <tr>
                                  <td height="38"><span class="w3-text-teal">Email</span></td>
                                  <td><span class="style37">
                                    <label>
                                      <%=rs.getString(14)%>                                      </label>
                                  </span></td>
                                 </tr>
                                <tr></tr>
                                <tr>
                                  <td colspan="2"><label>
                                  <input type="button" value="Back" onclick="myfunc()">
                                  </label></td>
                                </tr>
                            </table></td>
                            <td>&nbsp;</td>
                          </tr>
                          </table>
                         <%}
                     }catch(ClassNotFoundException e){e.printStackTrace();} %>
<script>
function myfunc(){
	location.href = 'viewvacancydetailhome.jsp';
}
function preventback(){
	window.history.forward();
}
setTimeout("preventback()",0);
window.onunload=function(){ null };

</script>
</body>
</html>
  
   

      

