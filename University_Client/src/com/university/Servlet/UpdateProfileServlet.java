package com.university.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.university.Service.Service;


@WebServlet("/UpdateProfile")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Service service = new Service();	
	String[] univInfoNameList, univInfoStateList, univStateList, univBranchList;
	
    public UpdateProfileServlet() {
        super();       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		try{
		univInfoNameList = new String[service.forScriptGetUniversityName().length];
		univInfoNameList = service.forScriptGetUniversityName();

		univStateList = new String[service.forScriptGetStateName().length];
		univStateList = service.forScriptGetStateName();

		univBranchList = new String[service.forScriptGetBranchName().length];
		univBranchList = service.forScriptGetBranchName();

//		String[][] exchangeRates = new String[service.forExchangeRates().length][service.forExchangeRates().length];
//		exchangeRates = service.forExchangeRates();
		
		request.setAttribute("univInfoNameList", univInfoNameList);
		request.setAttribute("univStateList", univStateList);
		request.setAttribute("univBranchList", univBranchList);
//		request.setAttribute("exchangeRates", exchangeRates);

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String sex = request.getParameter("sex");
		String grescore = request.getParameter("grescore");
		String toeflscore = request.getParameter("toeflscore");
		String majorfield = request.getParameter("majorfield");
		String workex = request.getParameter("workex");
		String workexfield = request.getParameter("workexfield");
		String publications = request.getParameter("publications");
		String visatype = request.getParameter("visatype");
		String financialaid = request.getParameter("financialaid");
		String ugradcollege = request.getParameter("ugradcollege");
		String ugradbranch = request.getParameter("ugradbranch");
		String ugradyear = request.getParameter("ugradyear");
		String ugradgpa = request.getParameter("ugradgpa");

		System.out.println("param"+firstname);
		System.out.println("param"+lastname);
		System.out.println("param"+email);
		System.out.println("param"+sex);
		System.out.println("param"+grescore);
		System.out.println("param"+toeflscore);
		System.out.println("param"+majorfield);
		System.out.println("param"+workex);
		System.out.println("param"+workexfield);
		System.out.println("param"+publications);
		System.out.println("param"+visatype);
		System.out.println("param"+financialaid);
		System.out.println("param"+ugradcollege);
		System.out.println("param"+ugradbranch);
		System.out.println("param"+ugradyear);
		System.out.println("param"+ugradgpa);

		service.updateProfile(firstname, lastname, email, sex, grescore, toeflscore, majorfield, workex, workexfield, publications, visatype, financialaid, ugradcollege, ugradbranch, ugradyear, ugradgpa);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
		dispatcher.forward( request, response); 

		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}

	}

}
