package alumni;
import java.sql.Date;
public class UserBean {
	
    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private int batch;
    private String city;
    private String bdate;
    private Date birthDate1;
    private String state;
    private String em;
    private String country;
    private String locale;
    private String company;
    public boolean valid;
   public UserBean(){
}
    public String getFirstName() {
       return firstName;
	}

    public void setFirstName(String newFirstName) {
       firstName = newFirstName;
	}

    public String getLastName() {
       return lastName;
	}

    public void setLastName(String newLastName) {
       lastName = newLastName;
	}
			
    public String getPassword() {
       return password;
	}

    public void setPassword(String newPassword) {
       password = newPassword;
	}
		
    public String getUsername() {
       return username;
	}
    
    public void setUserName(String newUsername) {
        username = newUsername;
 	}
	
    public String getcompany() {
       return company;
	}
    
    public void setcompany(String newcompany) {
        company = newcompany;
 	}
    public String getem() {
        return em;
 	}
     
     public void setem(String newemail) {
         em = newemail;
  	}
    public void setBirthDate(String bdate)
    {
        this.bdate=bdate;
    }
    public void setCity(String city)
    {
        this.city=city;
    }     
    public void setState(String state)
    {
        this.state=state;
    }
    public void setCountry(String country)
    {
        this.country=country;
    }
    public void setLocale(String locale)
    {
        this.locale=locale;
    }
   
    public String getBirthDate()
    {
        return bdate;
    }
    public void setbatch(int batch)
    {
        this.batch=batch;
    }
   
    public int getbatch()
    {
        return batch;
    }
    public String getCity()
    {
        return city;
    }     
    public String getState()
    {
        return state;
    }
    public String getCountry()
    {
        return country;
    }
    public String getLocale()
    {
        return locale;
    }
    

    public boolean isValid() {
       return valid;
	}

    public void setValid(boolean newValid) {
       valid = newValid;
	}	

	/**
	 * @return the birthDate1
	 */
	public Date getBirthDate1() {
		return birthDate1;
	}

	/**
	 * @param birthDate1 the birthDate1 to set
	 */
	public void setBirthDate1(Date birthDate1) {
		this.birthDate1 = birthDate1;
	}
}
