package com.university.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.university.Service.*;
import com.university.bean.FinancialAid;
import com.university.bean.UniversityInfoBean;

/**
 * Servlet implementation class UniversityInfo
 */

@WebServlet("/getDetailFromType")
public class UniversityInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FinancialAid financialDetail;


	Service service = new Service();
	String[] univInfoNameList, univStateList, univBranchList;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

//		System.out.println("In University Info Servlet ");
		UniversityInfoBean universityDetail;
		String universityNames[];
		
		try{
			univInfoNameList = new String[service.forScriptGetUniversityName().length];
			univInfoNameList = service.forScriptGetUniversityName();

			univStateList = new String[service.forScriptGetStateName().length];
			univStateList = service.forScriptGetStateName();

			univBranchList = new String[service.forScriptGetBranchName().length];
			univBranchList = service.forScriptGetBranchName();

			String univ_Name = request.getParameter("univ_name");
//			System.out.println("Univ Name is : "+univ_Name);

			String branch_Name = request.getParameter("branch_name");
//			System.out.println("Branch Name is : "+branch_Name);

			String state_Name = request.getParameter("state_name");
//			System.out.println("State Name is : "+state_Name);

			request.setAttribute("univInfoNameList", univInfoNameList);
			request.setAttribute("univStateList", univStateList);
			request.setAttribute("univBranchList", univBranchList);

			if(!(univ_Name == null))
			{
				
//				System.out.println("In University Detail Module");

				String[] enrollmentDetail = new String[service.getUniversityEnrollementInfo(univ_Name).length];

				universityDetail = service.getUniversityInfo(univ_Name);
				financialDetail = service.getUniversityFinancialInfo(univ_Name);
				enrollmentDetail = service.getUniversityEnrollementInfo(univ_Name);
				
				System.out.println("Checking university Detail Bean : "+universityDetail.getInstnm());
				System.out.println("This is university detail bean : "+universityDetail);
				
				request.setAttribute("universityDetail", universityDetail);
				request.setAttribute("enrollmentDetail", enrollmentDetail);
				request.setAttribute("financialDetail", financialDetail);
				
//				System.out.println("Sending to university jsp");
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("universitydetail.jsp");
				dispatcher.forward( request, response); 
				return;
			}
			
			else if(! (state_Name == null))
			{
//				System.out.println("In State University Name Model"+state_Name);
				universityNames = new String[service.getUniversityNamesList(state_Name).length];
				universityNames = service.getUniversityNamesList(state_Name);
				request.setAttribute("universityNames", universityNames);
				RequestDispatcher dispatcher = request.getRequestDispatcher("statelist.jsp");
				dispatcher.forward( request, response); 
				return;
			}
			
			else
			{
//				System.out.println("In Branch Based University Name Model");
				universityNames = new String[service.getUniversityNamesListFromBranch(branch_Name).length];
				universityNames = service.getUniversityNamesListFromBranch(branch_Name);
				request.setAttribute("universityNames", universityNames);
				RequestDispatcher dispatcher = request.getRequestDispatcher("univfrombranchlist.jsp");
				dispatcher.forward( request, response); 
				return;
			}
	
		}
		catch(Exception e){
			e.getStackTrace();
		}

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
