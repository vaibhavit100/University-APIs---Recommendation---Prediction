package com.university.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.university.Service.Service;
import com.university.bean.PredictBeanList;
import com.university.bean.UniversityInfoBean;
import com.university.bean.UniversityInfoListBean;

/**
 * Servlet implementation class PredictData
 */
@WebServlet("/PredictData")
public class PredictServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<UniversityInfoBean> univInfoList=null;
	PredictBeanList pbl = new PredictBeanList();
	List result = new ArrayList();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PredictServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		// TODO Auto-generated method stub
	   	HttpSession session = request.getSession();

		  String name=request.getParameter("university_name");
		  Service service = new Service();
		  Test tes = new Test();
		  System.out.println("Value is "+name);
		  UniversityInfoListBean beanList = new UniversityInfoListBean();
		  beanList = service.getUniversityInfoByName(name);
		  int univId=0;
		  univInfoList = beanList.getUnivInfoList();
		  for (UniversityInfoBean univ : univInfoList)
		  {	  univId=univ.getUnitid();
			  System.out.println("bean value "+univ.getUnitid());

		  }
		  pbl=service.findPrediction(univId);
//		  System.out.println("PBL value "+pbl.getPredictBeanList().get(0).getAdmssn());
		  result=tes.getPrediction(univId);
		  System.out.println("Result"+result);
		  session.setAttribute("list", result);
		  session.setAttribute("univName", name);
		  session.setAttribute("pbllist", pbl);

		  response.sendRedirect("predictedResult.jsp");

}}
