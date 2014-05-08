package com.university.Service;

import com.university.dao.*;
import com.university.bean.*;

import java.net.URLDecoder;
import java.net.URLEncoder;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.net.URL;
import java.sql.ResultSet;
import java.util.Scanner;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Service {
	String univUrl = "http://universityapi.vaibhav28.cloudbees.net";
//	String univUrl = "http://localhost:8080/university";



	private RestTemplate defaultRestTemplate = null;
	
	//Function Definition :  To Verify The User from Database
	public RegistrationBean verifyUser(String email, String password){
		DatabaseConnection db = new DatabaseConnection();
		return db.signIn(email, password);	
	}

	//Function Definition : To Get GRE Score From Profile
	public String getGreScore(String email){
		DatabaseConnection db = new DatabaseConnection();		

		return db.getGreScore(email);	
	}

	public PredictBeanList findPrediction(int unitId)		
	{
		DatabaseConnection db = new DatabaseConnection();		

		return db.getPrediction(unitId);	
	}

	
	public String getToeflScore(String email){
		DatabaseConnection db = new DatabaseConnection();		

		return db.getToeflScore(email);	
	}
	
	
	//Function Definition : To Get Profile based on Email	
	public UserProfileBean getProfile(String email){
		DatabaseConnection db = new DatabaseConnection();		
		UserProfileBean myProfile = new UserProfileBean();
		myProfile = db.getUserProfile(email);
		return myProfile;
	}
	
	
	
	
	
	
	
	//Function Ends Here

	//New Function Starts Here
	//Function Definition : To Update Profile based on Email	
	public void updateProfile(String firstname,String lastname,String email,String sex,String grescore,String toeflscore,
			String majorfield,String workex,String workexfield,String publications,String visatype,
			String financialaid,String ugradcollege,String ugradbranch,String ugradyear,String ugradgpa)
	{
		DatabaseConnection db = new DatabaseConnection();
		Boolean result = db.updateProfile(firstname, lastname, email, sex, grescore, toeflscore, majorfield, workex, workexfield, publications, visatype, financialaid, ugradcollege, ugradbranch, ugradyear, ugradgpa);	
		System.out.println("Update Status: "+ result);
	}
	//Function Ends Here


	
	public UniversityInfoListBean getUniversityInfoList() {

		try {
			UniversityInfoListBean resultList = getServerData(univUrl  + "/"+ "getUniversityInfo",HttpMethod.GET, null, UniversityInfoListBean.class);
			return resultList;

		} 
		catch (Exception e) {
			return null;
		}

	}
	
	
	public FinancialAidList getAllUniversityByFinancialAid(){
		try {
			FinancialAidList resultList = getServerData(univUrl  + "/"+ "getAllFinancialAid",HttpMethod.GET, null, FinancialAidList.class);
			return resultList;

		} 
		catch (Exception e) {
			return null;
		}
	}
	
	
	public UnivProgramList getAllUniversityProgram(){
		try {
			UnivProgramList resultList = getServerData(univUrl  + "/"+ "getAllUniversityProgram",HttpMethod.GET, null, UnivProgramList.class);
			return resultList;

		} 
		catch (Exception e) {
			System.out.println("Inside catch"+e.getMessage());
			return null;
		}

	}
	
	
	public UnivEnrollmentList getAllEnrollCourse(){
		try {
			UnivEnrollmentList resultList = getServerData(univUrl  + "/"+ "getAllEnrollCourse",HttpMethod.GET, null, UnivEnrollmentList.class);
			return resultList;

		} 
		catch (Exception e) {
			return null;
		}
		
	}
	
	
	public UnivProgramList getUniversityIdByScore(String gre,String toefl){
		try {
			UnivProgramList resultList = getServerData(univUrl  + "/"+ "getAllUniversityProgram",HttpMethod.GET, null, UnivProgramList.class);
			return resultList;

		} 
		catch (Exception e) {
			return null;
		}

	}

	

	public Boolean chkValidUser(String email){
		DatabaseConnection db = new DatabaseConnection();
		return db.chkUserName(email);
	}
	
	public UniversityInfoBean getUniversityInfo(String univ_name) throws IOException, JSONException{

		UniversityInfoBean ui = new UniversityInfoBean();

		// build a URL
		String name = univ_name;
	
		name = name.replaceAll(" ", "%20");
//		String s= "http://localhost:8080/university/getUniversityInfoByName?univName=" + name;
		String s = "http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByName?univName=" + name;
		URL url = new URL(s);

		// read from the URL
		Scanner scan = new Scanner(url.openStream());
		String str = new String();

		while (scan.hasNext())
			str += scan.nextLine();
		scan.close();

		str = str.replaceAll(": \" \" ", "No Info");
		JSONObject obj = new JSONObject(str);
		JSONObject res = obj.getJSONArray("univInfoList").getJSONObject(0);		
//		ui.setUnitid(res.getInt("unitid"));

		ui.setInstnm(res.getString("instnm"));
		ui.setAddr(res.getString("addr"));
		ui.setCity(res.getString("city"));
		ui.setStabbr(res.getString("stabbr"));
		ui.setZip(res.getString("zip"));
		ui.setFips(res.getString("fips"));
		ui.setObereg(res.getString("obereg"));
		ui.setChfnm(res.getString("chfnm"));
		ui.setChftitle(res.getString("chftitle"));
		ui.setGentele(res.getString("gentele"));
		ui.setEin(res.getString("ein"));
		ui.setWebaddr(res.getString("webaddr"));
		ui.setAdminurl(res.getString("adminurl"));
		ui.setFaidurl(res.getString("faidurl"));
		ui.setApplurl(res.getString("applurl"));
		ui.setNpricurl(res.getString("npricurl"));
		ui.setIclevel(res.getString("iclevel"));
		ui.setControl(res.getString("control"));
		ui.setHloffer(res.getString("hloffer"));
		ui.setUgoffer(res.getString("ugoffer"));
		ui.setGroffer(res.getString("groffer"));
		ui.setHdegofr1(res.getString("hdegofr1"));
		ui.setDeggrant(res.getString("deggrant"));
		ui.setHospital(res.getString("hospital"));
		ui.setMedical(res.getString("medical"));
		ui.setOpenpubl(res.getString("openpubl"));
		ui.setAct(res.getString("act"));
		ui.setIalias(res.getString("ialias"));
		ui.setInstcat(res.getString("instcat"));
		ui.setInstsize(res.getString("instsize"));
		//	Problematic parameter
		//	ui.setF1SYSNAM(res.getString("f1sysnam"));
		//	ui.setFaxtele(res.getString("faxtele"));
		//	ui.setCountycd(res.getString("countycd"));
		//	ui.setCountynm(res.getString("countynm"));
		ui.setLongitude(res.getString("longitude"));
		ui.setLatitude(res.getString("latitude"));	

		return ui;
	}
	
	
	
	//New Function Starts Here
	//Function Definition : to get all university from state name
	public String[] getUniversityNamesList(String state_name) throws IOException, JSONException{

		String[] s1;

		// build a URL
		String state = state_name;
		state = state.replaceAll(" ", "%20");
//		String s = "http://localhost:8080/university/getUniversityInfoByState?state=" + state;
		String s="http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByState?state=" + state;

		URL url = new URL(s);

		// read from the URL
		Scanner scan = new Scanner(url.openStream());
		String str = new String();

		while (scan.hasNext())
			str += scan.nextLine();
		scan.close();

		System.out.println("This is the json "+str);
		str = str.replaceAll(": \" \" ", "No Info");
		JSONObject obj = new JSONObject(str);
		System.out.println(obj.toString());
		JSONObject res;		

		//Array Size of array
		s1 = new String[obj.getJSONArray("univInfoList").length()];
		for(int i = 0; i < obj.getJSONArray("univInfoList").length(); i++)
		{			
			res = obj.getJSONArray("univInfoList").getJSONObject(i);
			s1[i] = res.getString("instnm");
		}
		return s1;
	}
	//Function Ends Here

	//New Function Starts Here
	//Function Definition : to get all university from branch name
	public String[] getUniversityNamesListFromBranch(String branch_name) throws IOException, JSONException{


		// build a URL
		String branch = branch_name;
		branch = branch.replaceAll(" ", "%20");
//		String s= "http://localhost:8080/university/getUnivNameByDepartment?department=" + branch;
		String s = "http://universityapi.vaibhav28.cloudbees.net/getUnivNameByDepartment?department=" + branch;
		System.out.println("Passinf this URL : "+s);
		URL url = new URL(s);

		// read from the URL
		Scanner scan = new Scanner(url.openStream());
		String str = new String();

		while (scan.hasNext())
			str += scan.nextLine();
		scan.close();

		JSONObject obj = new JSONObject(str);
		JSONArray res = obj.getJSONArray("univEnrollList");		

		int size = res.length();
		String n1;
		int endIndex = 0;

		String[] univBranchList = new String[size];

		for(int i=0;i<=size-1;i++){
			n1 = res.get(i).toString();
			endIndex = (n1.length()) - 2;
			n1 = n1.substring(2, endIndex);
			String[] temp = n1.split("\",\"");
			univBranchList[i] = temp[0];			
		}

		return univBranchList;
	}	

	/*------------------------------------------ALL FUNCTIONS BELOW ARE WRITTEN FOR AUTOCOMPLETE FEATURE--------------------------------------------------*/

	//New Function Starts Here
	//Function Definition : to get all university

	public String[] forScriptGetUniversityName() throws IOException, JSONException{

		// build a URL
//		String s="http://localhost:8080/university/getAllUniversityName";
		String s = "http://universityapi.vaibhav28.cloudbees.net/getAllUniversityName";
		URL url = new URL(s);

		// read from the URL
		Scanner scan = new Scanner(url.openStream());
		String str = new String();

		while (scan.hasNext())
			str += scan.nextLine();
		scan.close();

		JSONObject obj = new JSONObject(str);
		JSONArray res = obj.getJSONArray("univInfoList");		

		int size = res.length();
		String n1;
		int endIndex = 0;

		String[] univList = new String[size];
//		String[] univStateList = new String[size];
		
		for(int i=0;i<=size-1;i++){
			n1 = res.get(i).toString();
			endIndex = (n1.length()) - 2;
			n1 = n1.substring(2, endIndex);
			String[] temp = n1.split("\",\"");
			univList[i] = temp[0];
//			univStateList[i] = temp[1];
		}
		return univList;
	}

	public String[] forScriptGetBranchName() throws IOException, JSONException{

		// build a URL
//		String s="http://localhost:8080/university/getAllUnivDepartment";
		String s = "http://universityapi.vaibhav28.cloudbees.net/getAllUnivDepartment";
		URL url = new URL(s);

		// read from the URL
		Scanner scan = new Scanner(url.openStream());
		String str = new String();

		while (scan.hasNext())
			str += scan.nextLine();
		scan.close();

		JSONObject obj = new JSONObject(str);
		JSONArray res = obj.getJSONArray("univEnrollList");		

		int size = res.length();
		String n1;

		String[] univBranchList = new String[size];
		
		for(int i=0;i<=size-1;i++){
			n1 = res.get(i).toString();
			String[] temp = n1.split("\",\"");
			univBranchList[i] = temp[0];
		}

		return univBranchList;
	}

	
	public String[] forScriptGetStateName() throws IOException, JSONException{

		// build a URL
//		String s= "http://localhost:8080/university/getAllUniversityStates";
		String s = "http://universityapi.vaibhav28.cloudbees.net/getAllUniversityStates";
		URL url = new URL(s);

		// read from the URL
		Scanner scan = new Scanner(url.openStream());
		String str = new String();

		while (scan.hasNext())
			str += scan.nextLine();
		scan.close();
		JSONObject obj = new JSONObject(str);
		JSONArray res = obj.getJSONArray("univInfoList");
		int size = res.length();
		String n1;

		String[] univStateList = new String[size];
		
		for(int i=0;i<=size-1;i++){
			n1 = res.get(i).toString();

			String[] temp = n1.split("\",\"");

			univStateList[i] = temp[0];
			
		}
		for(int i=0;i<=size-1;i++){
			
		}		
		return univStateList;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	private <T> T getServerData(String moduleName, HttpMethod method, Object bean, Class<T> className) throws Exception {
//		logger.info("Invoke getServerData method of AppXProvCommandColector Class");
		String url = URLEncoder.encode(moduleName, "UTF-8");
		RestTemplate restTemplate = createRestTemplate();
		// Prepare header
		HttpHeaders headers = new HttpHeaders();
		// Pass object and header
		HttpEntity entity = new HttpEntity(bean, headers);
		// Send the request as POST
		String urlDe = URLDecoder.decode(url, "UTF-8");
		ResponseEntity result = restTemplate.exchange(urlDe, method, entity,className);

//		System.out.println("response entity name is "+result.getBody());

		return (T) result.getBody();
	}

	/**
	 * 
	 * @Description :Instantiate the RestTemplate class.
	 * @return RestTemplate
	 */
	public RestTemplate createRestTemplate() {
		if (defaultRestTemplate != null) {
			return defaultRestTemplate;
		} else {
			return new RestTemplate();
		}
	}

	public void setRestTemplate(RestTemplate restTemplate) {
		defaultRestTemplate = restTemplate;
	}

	public boolean registerUser(String firstName, String lastName,
			String email, String password, String confirmpassword) {
		DatabaseConnection db = new DatabaseConnection();
		boolean isUserRegistered = db.registerUserInDb(firstName, lastName, email, password, confirmpassword);
		return isUserRegistered;
	}


	public UnivProgramList getUniversityReco(String myGre,String myToefl) {
		try {
			String univUrl2 = "http://universityapi.vaibhav28.cloudbees.net";
//			 String univUrl2 ="http://localhost:8080/university"
			String str = univUrl2+"/getUniversityByminGreToefl?mingre="+myGre+"&mintoefl="+myToefl;
			System.out.println(str);
			UnivProgramList resultList =getServerData(str,HttpMethod.GET, null, UnivProgramList.class);

			System.out.println("Reco in Service: "+resultList);
			return resultList;

		} 
		catch (Exception e) {

			return null;
		}
	}

	public UniversityInfoListBean getUniversityInfoById(int univid){
		
		try {
            String str = "http://universityapi.vaibhav28.cloudbees.net" + "/"+ "getUniversityInfoById?univId="+univid;
//            String str ="http://localhost:8080/university" + "/"+ "getUniversityInfoById?univId="+univid;
            System.out.println("The URL: " +str);
			UniversityInfoListBean myUniversity = getServerData(str,HttpMethod.GET, null, UniversityInfoListBean.class);
			return myUniversity;

		} 
		catch (Exception e) {
			return null;
		}

	}

	
	public UniversityInfoListBean getUniversityInfoByName(String univName){
		
		try {
//			String str="http://localhost:8080/university" + "/"+ "getUniversityInfoByName?univName="+univName;
            String str = "http://universityapi.vaibhav28.cloudbees.net" + "/"+ "getUniversityInfoByName?univName="+univName;
            System.out.println("The URL: " +str);
            UniversityInfoListBean myUniversity = getServerData(str,HttpMethod.GET, null, UniversityInfoListBean.class);
			return myUniversity;

		} 
		catch (Exception e) {
			return null;
		}

	}
	
	
	//University Detail for financial Data
		public FinancialAid getUniversityFinancialInfo(String univ_name) throws IOException, JSONException{

			FinancialAid financialAidBean = new FinancialAid();

			// build a URL
			String name = univ_name;
			int unitId = 0;
			name = name.replaceAll(" ", "%20");
//			String s="http://localhost:8080/university/getUniversityInfoByName?univName=" + name;
			String s = "http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByName?univName=" + name;
			URL url = new URL(s);

			// read from the URL
			Scanner scan = new Scanner(url.openStream());
			String str = new String();

			while (scan.hasNext())
				str += scan.nextLine();
			scan.close();

			str = str.replaceAll(": \" \" ", "No Info");
			JSONObject obj = new JSONObject(str);
			JSONObject res = obj.getJSONArray("univInfoList").getJSONObject(0);		
			unitId = res.getInt("unitid");
//			String s1="http://localhost:8080/university/getFinancialAidByUnivId?univId=" + unitId;
			String s1 = "http://universityapi.vaibhav28.cloudbees.net/getFinancialAidByUnivId?univId=" + unitId;
			URL url1 = new URL(s1);

			// read from the URL
			Scanner scan1 = new Scanner(url1.openStream());
			String str1 = new String();

			while (scan1.hasNext())
				str1 += scan1.nextLine();
			scan1.close();

			JSONObject obj1 = new JSONObject(str1);
			JSONObject res1 = obj1.getJSONArray("financialAidList").getJSONObject(0);

			financialAidBean.setUNITID(res1.getInt("unitid"));
			financialAidBean.setSCUGRAD(res1.getString("scugrad"));
			financialAidBean.setSCUGFFN((res1.getString("scugffn")));
			financialAidBean.setSCUGFFP(res1.getString("scugffp"));
			financialAidBean.setSCFA2(res1.getString("scfa2"));
			financialAidBean.setSCFA1N(res1.getString("scfa1N"));
			financialAidBean.setSCFA12N(res1.getString("scfa12N"));
			financialAidBean.setSCFA12P(res1.getString("scfa12P"));
			financialAidBean.setSCFA13N(res1.getString("scfa13N"));
			financialAidBean.setSCFA13P(res1.getString("scfa13P"));
			financialAidBean.setUAGRNTN(res1.getString("uagrntn"));
			financialAidBean.setUAGRNTP(res1.getString("uagrntp"));
			financialAidBean.setUAGRNTT(res1.getString("uagrntt"));
			financialAidBean.setUAGRNTA(res1.getString("uagrnta"));
			financialAidBean.setGISTN2(res1.getString("gistn2"));
			financialAidBean.setGISTON2(res1.getString("giston2"));
			financialAidBean.setGISTWF2(res1.getString("gistwf2"));
			financialAidBean.setGISTOF2(res1.getString("gistof2"));
			financialAidBean.setGISTUN2(res1.getString("gistun2"));
			financialAidBean.setGISTT2(res1.getString("gistt2"));
			financialAidBean.setGISTA2(res1.getString("gista2"));		

			return financialAidBean;
		}
		
		public String[] getUniversityEnrollementInfo(String univ_name) throws IOException, JSONException{

			// build a URL
			String name = univ_name;
			int unitId = 0;
			name = name.replaceAll(" ", "%20");
//			String s="http://localhost:8080/university/getUniversityInfoByName?univName=" + name;
			String s = "http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByName?univName=" + name;
			URL url = new URL(s);

			// read from the URL
			Scanner scan = new Scanner(url.openStream());
			String str = new String();

			while (scan.hasNext())
				str += scan.nextLine();
			scan.close();

			str = str.replaceAll(": \" \" ", "No Info");
			JSONObject obj = new JSONObject(str);
			JSONObject res = obj.getJSONArray("univInfoList").getJSONObject(0);		
			unitId = res.getInt("unitid");
		
//			String s1="http://localhost:8080/university/getEnrollCourseByUnivId?univId=" + unitId;
			String s1 = "http://universityapi.vaibhav28.cloudbees.net/getEnrollCourseByUnivId?univId=" + unitId;
			URL url1 = new URL(s1);

			// read from the URL
			Scanner scan1 = new Scanner(url1.openStream());
			String str1 = new String();

			while (scan1.hasNext())
				str1 += scan1.nextLine();
			scan1.close();

			JSONObject obj1 = new JSONObject(str1);
			JSONObject res1 = obj1.getJSONArray("univEnrollList").getJSONObject(0);

			String[] data = new String[obj1.getJSONArray("univEnrollList").length()];
			JSONObject res2;
			for(int i=0;i<obj1.getJSONArray("univEnrollList").length();i++)
			{
				res2 = obj1.getJSONArray("univEnrollList").getJSONObject(i);
				data[i] = res2.getString("efciplev");

			}

			return data;
		}
		

	
	
}


