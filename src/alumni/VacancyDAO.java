package alumni;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import alumni.VacancyDTO;
import alumni.DataObject;
import alumni.DateWrapper;
import alumni.LoggerManager;
public class VacancyDAO extends DataObject{

	public Connection con;
	public VacancyDAO()
	{
	   	con = getConnection();
	}

//get Vacancy details
	
	public ArrayList<VacancyDTO> getVacancyDetails()
	{
		ArrayList<VacancyDTO> al = new ArrayList<VacancyDTO>();
		VacancyDTO vacdto = null;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from vacancy");
			while(rs.next())
			{
				vacdto = new VacancyDTO();
				vacdto.setVacancyid(rs.getInt(1));
				vacdto.setCompanyname(rs.getString(2));
				vacdto.setCompanyprofile(rs.getString(3));
				vacdto.setVacancyposition(rs.getString(4));
				vacdto.setJobdesc(rs.getString(5));
				vacdto.setCategory(rs.getString(6));
				vacdto.setLocation(rs.getString(7));
				vacdto.setDesiredprofile(rs.getString(8));
				vacdto.setDesiredexp(rs.getString(9));
				vacdto.setCreateddate1(rs.getDate(10));
				vacdto.setExpirydate1(rs.getDate(11));
				vacdto.setContactperson(rs.getString(12));
				vacdto.setDesignation(rs.getString(13));
				vacdto.setPhoneno(rs.getString(14));
				vacdto.setEmail(rs.getString(15));
				
				al.add(vacdto);
			}
		} catch (Exception e) {
		//out.println(e);
		}
		return al;
	}
	
	
//update Vacancy details
	
	public boolean updateVacancy(VacancyDTO vdto)
	{
		boolean flag=false;
		
		int vacancyid = vdto.getVacancyid();
		String companyname = vdto.getCompanyname();
		String companyprofile = vdto.getCompanyprofile();
		String vacancyposition = vdto.getVacancyposition();
		String jobdesc = vdto.getJobdesc();
		String category = vdto.getCategory();
		String location = vdto.getLocation();
		String desiredprofile = vdto.getDesiredprofile();
		String desiredexperience = vdto.getDesiredexp();
		String createddate = vdto.getCreateddate();
	    String expirydate = vdto.getExpirydate();
		String contactperson = vdto.getContactperson();
		String designation = vdto.getDesignation();
		String phoneno = vdto.getPhoneno();
		String email = vdto.getEmail();
		try 
		{
			PreparedStatement pst = con.prepareStatement("update vacancy set cname=?,profile=?,position=?,des=?,category=?,loc=?,dprof=?,ex=?,cdate=?,edate=?,cp=?,desig=?,mob=?,email=? where vac_id=?");
			
			pst.setInt(15, vacancyid);
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
			
			int i=pst.executeUpdate();
			
			if(i!=0)
		        flag=true;
			else
				flag=false;
		} catch (SQLException sqlex) {
		//	LoggerManager.writeLogSevere(sqlex);
			flag=false;
		}
		return flag;
	}
	
}

