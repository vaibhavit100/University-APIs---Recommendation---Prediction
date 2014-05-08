package com.cmpe295.university.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cmpe295.university.model.FinancialAid;
import com.cmpe295.university.model.FinancialAidList;
import com.cmpe295.university.model.UnivEnrollment;
import com.cmpe295.university.model.UnivEnrollmentList;
import com.cmpe295.university.model.UnivProgram;
import com.cmpe295.university.model.UnivProgramList;
import com.cmpe295.university.model.UniversityInfo;
import com.cmpe295.university.model.UniversityInfoList;


@Controller
public class UniversityController {

    @Autowired private UniversityDAO univDAO;  
	UniversityInfoList univList = new UniversityInfoList();
	UnivEnrollmentList enrollList = new UnivEnrollmentList();
	FinancialAidList financialAidList = new FinancialAidList();
	UnivProgramList univProgramList = new UnivProgramList();
	UnivEnrollmentList univEnrollList = new UnivEnrollmentList();


    //UniversityInfo-----------------------------------------------------------------------
    @RequestMapping(value = "/getUniversityInfo", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList  getUniv(Model model) 
    {
    	List<UniversityInfo> listUniv  = univDAO.findAllUniversityInfo();
    	univList.setUnivInfoList(listUniv);

    	model.addAttribute( univList);
		return univList;
    }
    
    
    @RequestMapping(value = "/getAllUniversityName", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList  getUnivName(Model model) 
    {
    	List<UniversityInfo> listUniv  = univDAO.findAllUniversityName();
    	univList.setUnivInfoList(listUniv);

    	model.addAttribute( univList);
		return univList;
    }
    
//    
//    @RequestMapping(value = "/getUniversityInfo2", method = RequestMethod.GET, produces = "application/json")
//    public @ResponseBody UniversityInfo2List  getUniversity(Model model) 
//    {
//    	List<UniversityInfo2> listUniv  = univDAO.findAllUniversityInfo2();
//    	univList2.setUnivInfoList(listUniv);
//
//    	model.addAttribute( univList2);
//		return univList2;
//    }
    
    
    
    @RequestMapping(value = "/getUniversityInfoByName", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList  getUniversityInfoByName(@RequestParam("univName") String univName, Model model) 
    {	

    	List<UniversityInfo> listUniv  = univDAO.findUniversityInfoByName(univName);

    	univList.setUnivInfoList(listUniv);
    	model.addAttribute( univList);
		return univList;
    }
    
    
    @RequestMapping(value = "/getUniversityInfoById", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList   getUniversityById(@RequestParam("univId") int univId, Model model) 
    {
    	List<UniversityInfo> listUniv = univDAO.findUniversityInfoById(univId);
    	univList.setUnivInfoList(listUniv);
    	model.addAttribute( univList);
		return univList;
    }
	
      
    
    @RequestMapping(value = "/getUniversityInfoByCity", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList   getUniversityByCity(@RequestParam("city") String city,Model model) 
    {
    	List<UniversityInfo> listUniv   = univDAO.findUniversityInfoByCity(city);
    	univList.setUnivInfoList(listUniv);
    	model.addAttribute( univList);
		return univList;
    }
    
    
    @RequestMapping(value = "/getUniversityInfoByState", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList   getUniversityByState(@RequestParam("state") String state,Model model) 
    {
    	List<UniversityInfo> listUniv  = univDAO.findUniversityInfoByState(state);
    	univList.setUnivInfoList(listUniv);
    	model.addAttribute( univList);
		return univList;
    }
    
    
    
    @RequestMapping(value = "/getUniversityInfoByZip", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList   getUniversityByZip(@RequestParam("zip") int zip,Model model) 
    {
    	List<UniversityInfo> listUniv   = univDAO.findUniversityInfoByZip(zip);
    	univList.setUnivInfoList(listUniv);
    	model.addAttribute( univList);
		return univList;
    }
    
    
    
    @RequestMapping(value = "/getUniversityInfoByCountyName", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList  geyUniversityByCountyName(@RequestParam("countyName") String countyName,Model model) 
    {
    	List<UniversityInfo> listUniv   = univDAO.findUniversityInfoByCountyName(countyName);
    	univList.setUnivInfoList(listUniv);
    	model.addAttribute( univList);
		return univList;
    }
    
    @RequestMapping(value = "/getAllUniversityStates", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList getAllUnivStates(Model model) 
    {
    	List<UniversityInfo> listUniv  = univDAO.findAllUniversityState();
//    	univStateList.setUnivInfoStateList(listUnivState);
    	univList.setUnivInfoList(listUniv);
    	model.addAttribute( univList);
		return univList;
    }
    
    
    
    //--------------------------------------------------------------------------------------------
   
	//Client Specific------------------------------------------------------------------------------------------------------------------

    @RequestMapping(value = "/getUniversityDetailsByName", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList  getUniversityDetailsByName(@RequestParam("univName") String univName, Model model) 
    {
    	List<UniversityInfo> listUniv  = univDAO.findUniversityDetailsByName(univName);
    	univList.setUnivInfoList(listUniv);
    	model.addAttribute( univList);
		return univList;
    }
    
    
    @RequestMapping(value = "/getUniversityDetailsById", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UniversityInfoList  getUniversityDetailsById(@RequestParam("univId") int univId, Model model) 
    {
    	List<UniversityInfo> listUniv  = univDAO.findUniversityDetailsById(univId);
    	univList.setUnivInfoList(listUniv);
    	model.addAttribute( univList);
		return univList;
    }
    
    
    //	AdmissionInfo By UniversityName
    @RequestMapping(value = "/getAdmissionInfoByUnivName", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UnivProgramList getAdmissionInfoByUnivName(@RequestParam("univName") String univName, Model model) 
       {
    	List<UnivProgram> listUnivProgram = univDAO.findAdmissionInfoByUnivName(univName);
    	univProgramList.setUnivProgramList(listUnivProgram);
    	model.addAttribute(univProgramList);
		return  univProgramList;
    }
    
    //	AdmissionInfo By UniversityId

    @RequestMapping(value = "/getAdmissionInfoByUnivId", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UnivProgramList getAdmissionInfoByUnivId(@RequestParam("univId") int univId, Model model) 
       {
    	List<UnivProgram> listUnivProgram = univDAO.findAdmissionInfoByUnivId(univId);
    	univProgramList.setUnivProgramList(listUnivProgram);
    	model.addAttribute(univProgramList);
		return  univProgramList;
    }
    
 	@RequestMapping(value = "/getUniversityIdByScore", method = RequestMethod.GET, produces = "application/json")
 	public @ResponseBody UnivProgramList getUnivIdByScore(@RequestParam("mingre") String gre,@RequestParam("mintoefl") String toefl,Model model) 
 	{
    	List<UnivProgram> listUnivProgram = univDAO.findUniversityIdByScore(gre,toefl);
    	univProgramList.setUnivProgramList(listUnivProgram);
    	model.addAttribute(univProgramList);
		return  univProgramList;
 	}

 	@RequestMapping(value = "/getUniversityApplicationById", method = RequestMethod.GET, produces = "application/json")
 	public @ResponseBody UniversityInfoList   findUniversitybyapplication(@RequestParam("univId") int univId,Model model) 
 	{
 		List<UniversityInfo> listUniv  = univDAO.findUniversityByApplication(univId);
     	univList.setUnivInfoList(listUniv);
 		model.addAttribute(univList);
 		return univList;
 	}
 	

 	
 	@RequestMapping(value = "/getUniversityByMinGRE", method = RequestMethod.GET, produces = "application/json")
 	public @ResponseBody UniversityInfoList  findUniversitybymingre(@RequestParam("mingre") String mingre,Model model) 
 	{
 		List<UniversityInfo> listUniv   = univDAO.findUniversityByMingre(mingre);
     	univList.setUnivInfoList(listUniv);
 		model.addAttribute(univList);
 		return univList;
 	}
 	
 	@RequestMapping(value = "/getUniversityByMinTOEFL", method = RequestMethod.GET, produces = "application/json")
 	public @ResponseBody UniversityInfoList   findUniversitybymintoefl(@RequestParam("mintoefl") String mintoefl,Model model) 
 	{
 		List<UniversityInfo> listUniv   = univDAO.findUniversityByMintoefl(mintoefl);
     	univList.setUnivInfoList(listUniv);
 		model.addAttribute(univList);
 		return univList;
 	}
     
 	//------------------------------------------------------------------------------------------------------------
    
 	//Enroll Course offered by University Name
    
    @RequestMapping(value = "/getAllEnrollCourse", method = RequestMethod.GET)
    public @ResponseBody UnivEnrollmentList  getCourseByUniversityName(Model model) 
    {
    	List<UnivEnrollment> listEnroll = univDAO.findAllEnrollCourse();
    	enrollList.setUnivEnrollList(listEnroll);
		model.addAttribute(enrollList);
    	return enrollList;
    }
    
    @RequestMapping(value = "/getEnrollCourseByUnivId", method = RequestMethod.GET)
    public @ResponseBody UnivEnrollmentList  getEnrollCourseByUniversityName(@RequestParam("univId") int univId, Model model) 
    {
    	List<UnivEnrollment> listEnroll = univDAO.findEnrollCoursesByUnivId(univId);
    	enrollList.setUnivEnrollList(listEnroll);
		model.addAttribute(enrollList);
    	return enrollList;
    }
    
    @RequestMapping(value = "/getEnrollCourseByUnivName", method = RequestMethod.GET)
    public @ResponseBody UnivEnrollmentList  getEnrollCourseByUniversityName(@RequestParam("univName") String univName, Model model) 
    {
    	List<UnivEnrollment> listEnroll = univDAO.findEnrollCoursesByUnivName(univName);
    	enrollList.setUnivEnrollList(listEnroll);
		model.addAttribute(enrollList);
    	return enrollList;
    }
  
    
    @RequestMapping(value = "/getAllUnivDepartment", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UnivEnrollmentList  getDepartment(Model model) 
    {
    	List<UnivEnrollment> listEnroll = univDAO.findAllDepartment();
    	enrollList.setUnivEnrollList(listEnroll);
		model.addAttribute(enrollList);
    	return enrollList;
    }
    
    @RequestMapping(value = "/getUnivNameByDepartment", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UnivEnrollmentList  getUnivNameByDepartment(@RequestParam("department") String department,Model model) 
    {
    	List<UnivEnrollment> listEnroll = univDAO.findUnivNameByDepartment(department);
    	enrollList.setUnivEnrollList(listEnroll);
		model.addAttribute(enrollList);
    	return enrollList;
    }
    
    
    
    //financial aid-------------------------------------------------------------------------
    @RequestMapping(value = "/getAllFinancialAid", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody FinancialAidList getFinancialAid(Model model) 
    {
    	List<FinancialAid> listFinancialAid  = univDAO.findAllUniversityBYFinancialAid();
    	financialAidList.setFinancialAidList(listFinancialAid);
    	model.addAttribute( financialAidList);
		return financialAidList;
    }
    
    @RequestMapping(value = "/getFinancialAidByUnivName", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody FinancialAidList getFinancialAidByUnivName(@RequestParam("univName") String univName, Model model) 
    {
    	List<FinancialAid> listFinancialAid  = univDAO.findfinancialAidByUnivName(univName);
    	financialAidList.setFinancialAidList(listFinancialAid);
    	model.addAttribute( financialAidList);
		return financialAidList;
    }
    
    @RequestMapping(value = "/getFinancialAidByUnivId", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody FinancialAidList getFinancialAidByUnivId(@RequestParam("univId") int univId, Model model) 
    {
    	List<FinancialAid> listFinancialAid  = univDAO.findFinancialAidByUnivId(univId);
    	financialAidList.setFinancialAidList(listFinancialAid);
    	model.addAttribute( financialAidList);
		return financialAidList;
    }
    
    
    //University program
    @RequestMapping(value = "/getAllUniversityProgram", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UnivProgramList getUnivProgram(Model model) 
    {
    	List<UnivProgram> listUnivProgram = univDAO.findAllUnivProgram();
    	univProgramList.setUnivProgramList(listUnivProgram);
    	model.addAttribute(univProgramList);
		return  univProgramList;
    }
    
    @RequestMapping(value = "/getUniversityProgramByName", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UnivProgramList getUniversityProgramByUnivName(@RequestParam("univName") String univName, Model model) 
       {
    	List<UnivProgram> listUnivProgram = univDAO.findUnivProgramByUnivName(univName);
    	univProgramList.setUnivProgramList(listUnivProgram);
    	model.addAttribute(univProgramList);
		return  univProgramList;
    }
    
    
    @RequestMapping(value = "/getUniversityProgramById", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody UnivProgramList getUniversityProgramByUnivName(@RequestParam("univId") int univId, Model model) 
       {
    	List<UnivProgram> listUnivProgram = univDAO.findUnivProgramByUnivId(univId);
    	univProgramList.setUnivProgramList(listUnivProgram);
    	model.addAttribute(univProgramList);
		return  univProgramList;
    }
    
    
    

	@RequestMapping(value = "/getUniversityByminGreToefl", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody UnivProgramList findUniversitybyminGreToefl
	(@RequestParam("mingre") String mingre, @RequestParam("mintoefl") String mintoefl ,Model model) 
	{
		List<UnivProgram> univProgramsList  = univDAO.findUniversitybyminGreToefl(mingre,mintoefl);
		univProgramList.setUnivProgramList(univProgramsList);
		return univProgramList;
	}

    

    
}
