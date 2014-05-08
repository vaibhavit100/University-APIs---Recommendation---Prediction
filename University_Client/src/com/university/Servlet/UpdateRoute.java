package com.university.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.university.Service.Service;

/**
 * Servlet implementation class UpdateRoute
 */
@WebServlet("/UpdateRoute")
public class UpdateRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Service service = new Service();
	String[] univInfoNameList, univInfoStateList, univStateList, univBranchList;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateRoute() {
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
		try{
			univInfoNameList = new String[service.forScriptGetUniversityName().length];
			univInfoNameList = service.forScriptGetUniversityName();

			univStateList = new String[service.forScriptGetStateName().length];
			univStateList = service.forScriptGetStateName();

			univBranchList = new String[service.forScriptGetBranchName().length];
			univBranchList = service.forScriptGetBranchName();

//			String[][] exchangeRates = new String[service.forExchangeRates().length][service.forExchangeRates().length];
//			exchangeRates = service.forExchangeRates();
//			
			request.setAttribute("univInfoNameList", univInfoNameList);
			request.setAttribute("univStateList", univStateList);
			request.setAttribute("univBranchList", univBranchList);
//			request.setAttribute("exchangeRates", exchangeRates);
			RequestDispatcher dispatcher = request.getRequestDispatcher("updateprofile.jsp");
			dispatcher.forward( request, response); 

		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}

	}

}
