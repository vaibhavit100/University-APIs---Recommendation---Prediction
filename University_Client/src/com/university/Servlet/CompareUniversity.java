package com.university.Servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.university.Service.Service;
import com.university.bean.UniversityInfoBean;
import com.university.bean.UniversityInfoListBean;

/**
 * Servlet implementation class CompareUniversity
 */
@WebServlet("/CompareUniversity")
public class CompareUniversity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Service service = new Service();
   	List<UniversityInfoBean> univInfoList = null;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompareUniversity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   	HttpSession session = request.getSession();
//		session.setAttribute("univInfoList", service.getUniversityInfoList());
		 response.sendRedirect("compareuniversity.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	   	HttpSession session = request.getSession();

		  String[] str=request.getParameterValues("univ");
		  HashMap<Integer,String> map = new HashMap<Integer,String>();
		  HashSet<Integer> hset = new HashSet<Integer>();
//		  ArrayList list=request.getParameterValues("univ");
		  for(int i=0;i<str.length;i++)
		  {
			  hset.add(Integer.parseInt(str[i]));
		  }
		  UniversityInfoListBean resultList=(UniversityInfoListBean)session.getAttribute("univInfoList");
		  univInfoList = resultList.getUnivInfoList();
		  for (UniversityInfoBean univ : univInfoList)
		  {
			if (hset.contains(univ.getUnitid()))

			  map.put(univ.getUnitid(),univ.getInstnm() );
				
		  }
		   session.setAttribute("hmap", map);
//		   session.setAttribute("univProgramList", service.getAllUniversityProgram());
//		   session.setAttribute("financialAidList", service.getAllUniversityByFinancialAid());
//		   session.setAttribute("enrollCourseList", service.getAllEnrollCourse());

//		   System.out.println("Map value "+map);
		  
		 response.sendRedirect("compareuniversitydetails.jsp");
	}

	}
