package com.university.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.university.bean.PredictBean;
import com.university.bean.PredictBeanList;
import com.university.bean.RegistrationBean;
import com.university.bean.UserProfileBean;

public class DatabaseConnection {
	private Connection connect = null;
	private PreparedStatement preparedStatement = null;
	private PreparedStatement preparedStatement2 = null;

	public DatabaseConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
//			connect = DriverManager.getConnection("jdbc:mysql://ec2-23-21-211-172.compute-1.amazonaws.com:3306/university_us?" + "user=root@1&password=root");
			connect = DriverManager.getConnection("jdbc:mysql://us-cdbr-cb-east-01.cleardb.net:3306/cb_user_university?" + "user=b359683ef8d0a3&password=ee805dcc");
//			connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/university_us?" + "user=root&password=root");

			System.out.println("Connected to DB");

		} catch (SQLException e) {
			e.printStackTrace();

		} catch (InstantiationException e) {
			e.printStackTrace();

		} catch (IllegalAccessException e) {
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();

		}
	}	  

	public PredictBeanList getPrediction(int unitId) {
	PredictBeanList pbl = new PredictBeanList();
	List<PredictBean> myPbList= new ArrayList<PredictBean>();
	ResultSet rs;	
	try {

		preparedStatement = connect.prepareStatement("SELECT * FROM predictdata  where unitid=?");
		preparedStatement.setInt(1,unitId);
		rs = preparedStatement.executeQuery();
		System.out.println("Result set value is "+unitId);
		int i =0;
		while (rs.next()) {
			PredictBean pb = new PredictBean();

			pb.setUnitid(rs.getInt("unitid"));
			pb.setYear(rs.getInt("year"));
			pb.setApplcn(rs.getInt("applcn"));
			pb.setApplcnm(rs.getInt("applcnm"));
			pb.setApplcnw(rs.getInt("applcnw"));
			pb.setAdmssn(rs.getInt("admssn"));
			pb.setAdmssnm(rs.getInt("admssnm"));
			pb.setAdmssnw(rs.getInt("admssnw"));
			pb.setEnrlt(rs.getInt("enrlt"));
			pb.setEnrlftm(rs.getInt("enrlftm"));
			pb.setEnrlftw(rs.getInt("enrlftw"));
			myPbList.add(pb);
//			pbl.setPredictBeanList(pb);
//		System.out.println("In RS :"+myPbList.get(0).getAdmssn());
		i++;
		}		
//		System.out.println("In RS :"+myPbList.get(3).getAdmssn());
//
//		System.out.println("In RS :"+myPbList.size());
		pbl.setPredictBeanList(myPbList);

	} catch (SQLException e) {
	  e.printStackTrace();
	}

//	System.out.println("PB1 :"+pbl.toString());
	return pbl;
}

	public RegistrationBean signIn(String email, String password) {
		RegistrationBean reg = new RegistrationBean();
		String firstname = null, lastname=null;
		ResultSet rs;
		//	Registration objLoggedInUser = new Registration();
		try {
			// statements allow to issue SQL queries to the database
			//statement = connect.createStatement();
			// resultSet gets the result of the SQL query

			preparedStatement = connect.prepareStatement("SELECT * FROM USERPROFILE WHERE email=? and password=?");
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			rs = preparedStatement.executeQuery();

			if (rs.next()) {
				firstname = rs.getString("firstname");
				lastname = rs.getString("lastname");
				System.out.println("Inside if Result set is "+rs);

				reg.setFIRSTNAME(firstname);
				reg.setLASTNAME(lastname);

			}
			else
			{
				System.out.println("Inside elseResult set is "+rs);

				reg = null;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reg;

	}


	
	
	public Boolean chkUserName(String email){

		ResultSet rs;
		boolean result=false;

		try {
			preparedStatement = connect.prepareStatement("SELECT * FROM USERPROFILE WHERE EMAIL = ?");
			preparedStatement.setString(1,email);
			rs = preparedStatement.executeQuery();
			System.out.println(rs);

			if (!rs.next()) 
			{
				
				result=true;
			}

			else
				result=false;


		} catch (SQLException e) {

			e.printStackTrace();
		}
		return result;

	}
	
	//	Function Added By Apurv - Profile Update and Recommendtaion system


	//Function For user Profile
	public UserProfileBean getUserProfile(String email){

		UserProfileBean myProfile = new UserProfileBean();
		ResultSet rs;

		String firstname = null;
		String lastname = null;
		String sex= null;
		String grescore= null;
		String toeflscore= null;
		String majorfield= null;
		String workex= null;
		String workexfield= null;
		String publications= null;
		String visatype= null;
		String financialaid= null;
		String ugradcollege= null;
		String ugradbranch= null;
		String ugradyear= null;
		String ugradgpa= null;

		try {
			preparedStatement = connect.prepareStatement("SELECT * FROM USERPROFILE WHERE EMAIL = ?");
			preparedStatement.setString(1,email);
			rs = preparedStatement.executeQuery();
			System.out.println(rs);

			while (rs.next()) {
				firstname = rs.getString("firstname");
				lastname = rs.getString("lastname");
				sex = rs.getString("sex");
				grescore = rs.getString("grescore");
				toeflscore = rs.getString("toeflscore");
				majorfield = rs.getString("majorfield");
				workex = rs.getString("workex");
				workexfield = rs.getString("workexfield");
				publications = rs.getString("publications");
				visatype = rs.getString("visatype");
				financialaid = rs.getString("financialaid");
				ugradcollege = rs.getString("ugradcollege");
				ugradbranch = rs.getString("ugradbranch");
				ugradyear = rs.getString("ugradyear");
				ugradgpa = rs.getString("ugradgpa");
			}

			myProfile.setFIRSTNAME(firstname);
			myProfile.setLASTNAME(lastname);
			myProfile.setSEX(sex);
			myProfile.setEMAIL(email);
			myProfile.setGRESCORE(grescore);
			myProfile.setTOEFLSCORE(toeflscore);
			myProfile.setMAJORFIELD(majorfield);
			myProfile.setWORKEX(workex);
			myProfile.setWORKEXFIELD(workexfield);
			myProfile.setPUBLICATIONS(publications);
			myProfile.setVISATYPE(visatype);
			myProfile.setFINANCIALAID(financialaid);
			myProfile.setUGRADCOLLEGE(ugradcollege);
			myProfile.setUGRADBRANCH(ugradbranch);
			myProfile.setUGRADYEAR(ugradyear);
			myProfile.setUGRADGPA(ugradgpa);



		} catch (SQLException e) {

			e.printStackTrace();
		}
		return myProfile;

	}


	public boolean updateProfile(String firstname,String lastname,String email,String sex,
			String grescore,String toeflscore,String majorfield,String workex,String workexfield,
			String publications,String visatype,String financialaid,String ugradcollege,
			String ugradbranch,String ugradyear,String ugradgpa) {

		try {
			preparedStatement = connect.prepareStatement("UPDATE USERPROFILE SET FIRSTNAME=? ,LASTNAME = ? ,SEX=?,GRESCORE=?,TOEFLSCORE=?,MAJORFIELD=?,WORKEX=?,WORKEXFIELD=?,PUBLICATIONS=?,VISATYPE=?,FINANCIALAID=?,UGRADCOLLEGE=?,UGRADBRANCH=?,UGRADYEAR=?,UGRADGPA=? WHERE EMAIL=?");
			preparedStatement.setString(1,firstname);
			preparedStatement.setString(2,lastname);
			preparedStatement.setString(3,sex);
			preparedStatement.setString(4,grescore);
			preparedStatement.setString(5,toeflscore);
			preparedStatement.setString(6,majorfield);
			preparedStatement.setString(7,workex);
			preparedStatement.setString(8,workexfield);
			preparedStatement.setString(9,publications);
			preparedStatement.setString(10,visatype);
			preparedStatement.setString(11,financialaid);
			preparedStatement.setString(12,ugradcollege);
			preparedStatement.setString(13,ugradbranch);
			preparedStatement.setString(14,ugradyear);
			preparedStatement.setString(15,ugradgpa);
			preparedStatement.setString(16,email);

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean registerUserInDb(String firstName, String lastName,String email, String password, String confirmpassword) {
		int noOfRows = 0;
		String val=null;
		ResultSet rset;
		try{
//			preparedStatement2 = connect.prepareStatement("SELECT * FROM USERPROFILE WHERE EMAIL = ?");
//			preparedStatement2.setString(1,email);
//			rset= preparedStatement2.executeQuery();
//			System.out.println("Result set is "+email);
//			System.out.println("Size of Result set is "+rset.toString().length());
//			if (rset.next()) {
//			    val = rset.getString("FIRSTNAME");
//			}
//			   
//			if (val==null) {
		
			preparedStatement = connect.prepareStatement("INSERT INTO userprofile (`FIRSTNAME`, `LASTNAME`, `EMAIL`, `PASSWORD`, `CONFIRMPASSWORD`) VALUES (?, ?, ?, ?, ?)" );
			preparedStatement.setString(1,firstName);
			preparedStatement.setString(2,lastName);
			preparedStatement.setString(3,email);
			preparedStatement.setString(4,password);
			preparedStatement.setString(5,confirmpassword);
			noOfRows = preparedStatement.executeUpdate();
			System.out.println("The Number of affected rows are : "+noOfRows);
//			 }
//							
//			else 
//				return false;
			
		}
		catch(Exception ex){
			ex.printStackTrace();
			return false;
		}
		if(noOfRows>0)
			return true;
		else 
			return false;
	}

	
	public String getToeflScore (String email){

		ResultSet rs;
		String toeflscore= null;

		try {

			preparedStatement = connect.prepareStatement("SELECT TOEFLSCORE FROM USERPROFILE WHERE EMAIL = ?");
			preparedStatement.setString(1,email);
			rs = preparedStatement.executeQuery();
			System.out.println(rs);

			while (rs.next()) {
				toeflscore = rs.getString("toeflscore");
			}
			
		} catch (SQLException e) {
		  e.printStackTrace();
		}

		return toeflscore;
	}
	
	public String getGreScore(String email){

		ResultSet rs;
		String grescore= null;

		try {

			preparedStatement = connect.prepareStatement("SELECT GRESCORE FROM USERPROFILE WHERE EMAIL = ?");
			preparedStatement.setString(1,email);
			rs = preparedStatement.executeQuery();
			System.out.println(rs);

			while (rs.next()) {
				grescore = rs.getString("grescore");
			}
			
		} catch (SQLException e) {
		  e.printStackTrace();
		}

		return grescore;
	}

}

