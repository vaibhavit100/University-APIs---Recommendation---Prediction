package com.university.Servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.university.Service.Service;
import com.university.bean.RegistrationBean;
import com.university.bean.UniversityInfoBean;
import com.university.bean.UniversityInfoListBean;

/**
 * Servlet implementation class home
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	List<UniversityInfoBean> univInfoList = null;
//	Service service = new Service();
//	String[] univInfoNameList, univInfoStateList, univStateList, univBranchList;
//	UniversityInfoBean univ = new UniversityInfoBean();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
//			System.out.println("Inside get new method"+univ.getInstnm());
//		   	HttpSession session = request.getSession();
//			univInfoNameList = new String[service.forScriptGetUniversityName().length];
//			univInfoNameList = service.forScriptGetUniversityName();
//			
//			univStateList = new String[service.forScriptGetStateName().length];
//			univStateList = service.forScriptGetStateName();
//			
//			univBranchList = new String[service.forScriptGetBranchName().length];
//			univBranchList = service.forScriptGetBranchName();
//			
//			//request.setAttribute("univInfoList", service.getUniversityInfoList());
//			
//			session.setAttribute("univInfoNameList", univInfoNameList);
//			session.setAttribute("univStateList", univStateList);
//			session.setAttribute("univBranchList", univBranchList);
//			 HashMap<Integer,String> map = new HashMap<Integer,String>();
//
//		    UniversityInfoListBean resultList=(UniversityInfoListBean)service.getUniversityInfoList();
//			univInfoList = resultList.getUnivInfoList();
//			int c=0;
//			 for (UniversityInfoBean univ : univInfoList)
//			  {
//				 if(c<4)
//				  {map.put(univ.getUnitid(),univ.getInstnm() );
//				  c++;}
//				 else
//					 break;
//			  }
//			   session.setAttribute("mapkey", map);
//			   session.setAttribute("univInfoList", service.getUniversityInfoList());
//			   session.setAttribute("univProgramList", service.getAllUniversityProgram());
//			   session.setAttribute("financialAidList", service.getAllUniversityByFinancialAid());
//			   session.setAttribute("enrollCourseList", service.getAllEnrollCourse());
//			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
//			dispatcher.forward( request, response); 
			response.sendRedirect("home.jsp");

		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
