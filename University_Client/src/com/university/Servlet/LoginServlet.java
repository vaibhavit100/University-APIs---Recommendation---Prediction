package com.university.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.university.Service.*;
import com.university.bean.RegistrationBean;
import com.university.bean.UniversityInfoBean;
import com.university.bean.UniversityInfoListBean;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Service service = new Service();
    Random random = new Random();

	List<UniversityInfoBean> univInfoList = null;
	String[] univInfoNameList, univInfoStateList, univStateList, univBranchList;
	UniversityInfoBean univ = new UniversityInfoBean();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Service service = new Service();
		   	HttpSession session = request.getSession();

			String email = request.getParameter("email");
			String password = request.getParameter("password");
//		   	HttpSession session = request.getSession();

			RegistrationBean userName = service.verifyUser(email, password);
			System.out.println("Found user : "+userName);
			if(userName == null){
				session.setAttribute("message", "Invalid Username or Password");
				response.sendRedirect("index.jsp");
				
//				request.setAttribute("message", "UserName");
//				RequestDispatcher dispatcher = servletContext().getRequestDispatcher(("index.jsp"));
//
//				dispatcher.forward(request, response);
			}
			else{
				request.getSession().setAttribute("userName", userName);
				request.getSession().setAttribute("email", email);
				univInfoNameList = new String[service.forScriptGetUniversityName().length];
				univInfoNameList = service.forScriptGetUniversityName();
				
				univStateList = new String[service.forScriptGetStateName().length];
				univStateList = service.forScriptGetStateName();
				
				univBranchList = new String[service.forScriptGetBranchName().length];
				univBranchList = service.forScriptGetBranchName();
				
				//request.setAttribute("univInfoList", service.getUniversityInfoList());
				
				session.setAttribute("univInfoNameList", univInfoNameList);
				session.setAttribute("univStateList", univStateList);
				session.setAttribute("univBranchList", univBranchList);
				 HashMap<Integer,String> map = new HashMap<Integer,String>();

			    UniversityInfoListBean resultList=(UniversityInfoListBean)service.getUniversityInfoList();
			    ArrayList univName= new ArrayList();
			    ArrayList univId = new ArrayList();
				univInfoList = resultList.getUnivInfoList();
				int c=0;
				 for (UniversityInfoBean univ : univInfoList)
				  {
					 univName.add(univ.getInstnm());
					 univId.add(univ.getUnitid());
					 
				  } 
				
				 for(int i =0; i<19; i++){
					    int randomInteger = random.nextInt(univInfoList.size());
					    map.put((Integer)univId.get(randomInteger),univName.get(randomInteger).toString()); 
					}
		 
//					 if(c<4)
//					  {map.put(univ.getUnitid(),univ.getInstnm() );
//					  c++;}
//					 else
//						 break;
				  
				   session.setAttribute("mapkey", map);
				   session.setAttribute("univInfoList", service.getUniversityInfoList());
				   session.setAttribute("univProgramList", service.getAllUniversityProgram());
				   session.setAttribute("financialAidList", service.getAllUniversityByFinancialAid());
				   session.setAttribute("enrollCourseList", service.getAllEnrollCourse());
				response.sendRedirect("home");
				return;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
}
