package com.cmpe295.university.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cmpe295.university.model.FinancialAid;
import com.cmpe295.university.model.UnivEnrollment;
import com.cmpe295.university.model.UnivProgram;
import com.cmpe295.university.model.UniversityInfo;


@Repository
@SuppressWarnings({"unchecked", "rawtypes"})
public class UniversityDAO {

	@Autowired private SessionFactory sessionFactory;

	
	@Transactional
	public List<UniversityInfo> findAllUniversityInfo(){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("from UniversityInfo order by INSTNM").list();
		return univ;
	}
	
	@Transactional
	public List<UniversityInfo> findAllUniversityName(){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("SELECT INSTNM, STABBR FROM UniversityInfo  order by STABBR,INSTNM").list();
		return univ;
	}

	
	@Transactional
	public List<UniversityInfo> findUniversityInfoById(int univId){
		
		Session session = sessionFactory.getCurrentSession();
		System.out.println("University ID is "+univId);
		List univ = session.createQuery(" from UniversityInfo where UnitId ='"+univId+"' order by INSTNM").list();
		return univ;
	}
	

	
	@Transactional
	public List<UniversityInfo>findUniversityInfoByName(String instName){
		
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Values "+instName);
		List univ = session.createQuery(" from UniversityInfo where Instnm='"+instName+"'").list();
		return  univ;
	}
	@Transactional
	public List<UniversityInfo> findUniversityInfoByCity(String city){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery(" from UniversityInfo where City  ='"+city+"'").list();
		return univ;
	}
	
	
	@Transactional
	public List<UniversityInfo> findUniversityInfoByState(String state){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery(" from UniversityInfo where Stabbr ='"+state+"' ").list();
		return univ;
	}
	
	
	@Transactional
	public List<UniversityInfo> findUniversityInfoByZip(int zip){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery(" from UniversityInfo where Zip ='"+zip+"'").list();
		return univ;
	}
	
	
	@Transactional
	public List<UniversityInfo> findUniversityInfoByCountyName(String cntName){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery(" from UniversityInfo where Countynm like '%"+cntName+"%'").list();
		return univ;
	}
	
	@Transactional
	public List<UniversityInfo> findAllUniversityState(){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select DISTINCT(STABBR) from UniversityInfo").list();
		return univ;
	}
	
	
//	@Transactional
//	public List<UniversityInfo2> findAllUniversityInfo2(){
//		
//		Session session = sessionFactory.getCurrentSession();
//		List univ = session.createQuery(" from UniversityInfo2 order by INSTNM").list();
//		return univ;
//	}
	
	//Client Specific------------------------------------------------------------------------------------------------------------------
	@Transactional
	public List<UniversityInfo> findUniversityDetailsByName(String instName){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UI.INSTNM, UI.ADDR,UI.CITY, UI.STABBR, UI.ZIP,UI.WEBADDR,UI.CONTROL,UI.HLOFFER,UI.UNITID,UI.UGOFFER, UI.GROFFER, UI.HDEGOFR1,UI.OPENPUBL,UI.IALIAS,UI.FAXTELE,UI.COUNTYNM,UI.LONGITUDE,UI.LATITUDE,UP.APPLFEEU,UP.APPLFEEG,UP.ROOM,UP.ENRLT,UP.APPLCN,UP.ADMSSN,UP.ENRLFT,FA.SCFA2, FA.GISTT2, FA.GISTA2 from UniversityInfo UI, FinancialAid FA,UnivProgram UP where UI.UNITID = FA.UNITID AND UI.UNITID = UP.UNITID AND Instnm ='"+instName+"'").list();
		return univ;
	}
	
	
	@Transactional
	public List<UniversityInfo> findUniversityDetailsById(int univId){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UI.INSTNM, UI.ADDR,UI.CITY, UI.STABBR, UI.ZIP,UI.WEBADDR,UI.CONTROL,UI.HLOFFER,UI.UNITID,UI.UGOFFER, UI.GROFFER, UI.HDEGOFR1,UI.OPENPUBL,UI.IALIAS,UI.FAXTELE,UI.COUNTYNM,UI.LONGITUDE,UI.LATITUDE,UP.APPLFEEU,UP.APPLFEEG,UP.ROOM,UP.ENRLT,UP.APPLCN,UP.ADMSSN,UP.ENRLFT,FA.SCFA2, FA.GISTT2, FA.GISTA2 from UniversityInfo UI, FinancialAid FA,UnivProgram UP where UI.UnitId ='"+univId+"'").list();
		return univ;
	}
	
	
	//AdmissionInfo By UniversityId
	@Transactional
	public List<UnivProgram> findAdmissionInfoByUnivId(int univId){
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UP.UNITID,UP.ADMCON1, UP.ADMCON2, UP.ADMCON3, UP.ADMCON4, UP.ADMCON5, UP.ADMCON6, UP.ADMCON7, UP.ADMCON8, UP.ADMCON9 from UnivProgram  UP where UnitId ="+univId).list();
		return univ;
	}
	
	//AdmissionInfo By UniversityName

	@Transactional
	public List<UnivProgram> findAdmissionInfoByUnivName(String instName){
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Inside DAO");
		List univ = session.createQuery("Select UP.UNITID,UP.ADMCON1, UP.ADMCON2, UP.ADMCON3, UP.ADMCON4, UP.ADMCON5, UP.ADMCON6, UP.ADMCON7, UP.ADMCON8, UP.ADMCON9 from UniversityInfo UI,UnivProgram UP where UI.UNITID = UP.UNITID  AND UI.INSTNM ='"+instName+"'").list();
		System.out.println("After DAO");

		return univ;
	}

	
	
	
	@Transactional
	public List<UnivProgram> findUniversityIdByScore(String gre,String toefl){
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Inside DAO");
		
		List univ = session.createQuery("Select UNITID from UnivProgram where MINTOEFL<='"+toefl+"' AND MINGRE<='"+gre+"'").list();
		System.out.println("After DAO");

		return univ;
	}

	//--------------------------------------------------------------------------------------------------------
	
	
	//Join with financial aid
	@Transactional
	public List<UniversityInfo> findyfinancialAidByUniversityName(String instName){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UI.INSTNM, UI.ADDR,UI.CITY, UI.STABBR, UI.ZIP,UI.WEBADDR,UI.CONTROL,UI.HLOFFER,UI.UNITID,UI.UGOFFER, UI.GROFFER, UI.HDEGOFR1,UI.OPENPUBL,UI.IALIAS,UI.FAXTELE,UI.COUNTYNM,UI.LONGITUDE,UI.LATITUDE,UP.APPLFEEU,UP.APPLFEEG,UP.ROOM,UP.ENRLT,UP.APPLCN,UP.ADMSSN,UP.ENRLFT,FA.SCFA2, FA.GISTT2, FA.GISTA2 from UniversityInfo UI, FinancialAid FA,UnivProgram UP where UI.UNITID = FA.UNITID AND UI.UNITID = UP.UNITID AND Instnm like'%"+instName+"%'").list();
		return univ;
	}
	
	@Transactional
	public List<UniversityInfo> findStudentsByUniversityId(int univId){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery(" select SCFA1N from financialaid where UnitId ="+univId).list();
		return univ;
		
	}
	
	@Transactional
	public List<UniversityInfo> findEnrollmentByUnivId(int univId){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UI.UNITID, UI.INSTNM, UP.ENRLT from UniversityInfo as UI, UnivProgram as UP where UI.UNITID = UP.UNITID and UI.UNITID='"+univId+"'").list();
		return univ;
		
	}
	
	@Transactional
	public List<UniversityInfo> findUniversityByApplication(int univId){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UI.UNITID,UI.INSTNM,UP.APPLCN from UniversityInfo as UI, UnivProgram as UP where UI.UNITID = UP.UNITID and UI.UNITID="+univId).list();
		return univ;
		
	}
	
	@Transactional
	public List<UniversityInfo> findUniversityByMingre(String gre){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UI.UNITID,UI.INSTNM,UP.MINGRE from UniversityInfo as UI, UnivProgram as UP where UI.UNITID = UP.UNITID and UP.MINGRE<='"+gre+"'").list();
		return univ;
		
	}
	
	@Transactional
	public List<UniversityInfo> findUniversityByMintoefl(String toefl){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UI.UNITID,UI.INSTNM,UP.MINTOEFL from UniversityInfo as UI, UnivProgram as UP where UI.UNITID = UP.UNITID and UP.MINTOEFL<='"+toefl+"'").list();
		return univ;
		
	}
	
	

	
	
	//Financial Aid------------------------------------------------------------------------------------------------------------------
	@Transactional
	public List<FinancialAid> findAllUniversityBYFinancialAid(){
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery(" from FinancialAid").list();
		return univ;
	}
	
	

	@Transactional
	public List<FinancialAid> findFinancialAidByUnivId(int univId){
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery(" from FinancialAid where UnitId ="+univId).list();
		return univ;
	}
	
	
	@Transactional
	public List<FinancialAid> findfinancialAidByUnivName(String instName){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select FA.UNITID, FA.SCUGRAD, FA.SCUGFFN, FA.SCUGFFP, FA.SCFA2, FA.SCFA1N, FA.SCFA12N, FA.SCFA12P, FA.SCFA13N, FA.SCFA13P, FA.SCFY2, FA.SCFY1N, FA.UAGRNTN, FA.UAGRNTP, FA.UAGRNTT, FA.UAGRNTA, FA.GISTN2, FA.GISTON2, FA.GISTWF2, FA.GISTOF2, FA.GISTUN2, FA.GISTT2, FA.GISTA2 from UniversityInfo UI, FinancialAid FA where UI.UNITID = FA.UNITID  AND UI.INSTNM ='"+instName+"'").list();
		return univ;
	}


	
	//UnivProgram------------------------------------------------------------------------------------------------------------------
	@Transactional
	public List<UnivProgram> findAllUnivProgram(){
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery(" from UnivProgram").list();
		return univ;
	}
	
	
	@Transactional
	public List<UnivProgram> findUnivProgramByUnivId(int univId){
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery(" from UnivProgram where UnitId ="+univId).list();
		return univ;
	}
	
	
	@Transactional
	public List<UnivProgram> findUnivProgramByUnivName(String instName){
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UP.UNITID, UP.PEO1ISTR, UP.PEO2ISTR, UP.CNTLAFFI, UP.LEVEL1, UP.ADMCON1, UP.ADMCON2, UP.ADMCON3, UP.ADMCON4, UP.ADMCON5, UP.ADMCON6, UP.ADMCON7, UP.ADMCON8, UP.ADMCON9, UP.APPDATE, UP.CALSYS, UP.APPLFEEU, UP.APPLFEEG, UP.TUITVARY, UP.ROOM, UP.ENRLT, UP.APPLCN, UP.ADMSSN, UP.ENRLFT, UP.TUITPL from UniversityInfo UI,UnivProgram UP where UI.UNITID = UP.UNITID  AND UI.INSTNM ='"+instName+"'").list();

		return univ;
	}
	
	
	
	//UnivEnrolment------------------------------------------------------------------------------------------------------------------
	@Transactional
	public List<UnivEnrollment> findAllEnrollCourse(){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("FROM  UnivEnrollment").list();
		return univ;
		
	}
	
	
	@Transactional
	public List<UnivEnrollment> findEnrollCoursesByUnivId(int univId){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("FROM  UnivEnrollment where UnitId ="+univId).list();
		return univ;
		
	}
	
	@Transactional
	public List<UnivEnrollment> findEnrollCoursesByUnivName(String instName){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select UE.UNITID, UE.EFCIPLEV, UE.CIPCODE, UE.ENROLLID FROM UniversityInfo UI, UnivEnrollment UE where  UI.UNITID = UE.UNITID AND Instnm  ='"+instName+"' order by INSTNM").list();
		return univ;
	}
	
	
	@Transactional
	public List<UnivEnrollment> findAllDepartment(){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("Select DISTINCT(CIPCODE) FROM  UnivEnrollment").list();
		return univ;
		
	}
	
	@Transactional
	public List<UnivEnrollment> findUnivNameByDepartment(String department){
		
		Session session = sessionFactory.getCurrentSession();
		List univ = session.createQuery("SELECT DISTINCT(UI.INSTNM), UI.STABBR FROM  UniversityInfo UI, UnivEnrollment UE where UI.UNITID=UE.UNITID AND UE.CIPCODE like'%"+department+"%'").list();
		return univ;
	}
	
	
	@Transactional
	public List<UnivProgram> findUniversitybyminGreToefl(String gre,String toefl){

		Session session = sessionFactory.getCurrentSession();
		System.out.println("Before db "+gre + toefl);
		List univ = session.createQuery("from UnivProgram "
				+ "where MINGRE <="+gre+" and MINTOEFL <="+toefl+"").list();
		System.out.println("DAO LIST: " +univ);
		return univ;

	}

}
