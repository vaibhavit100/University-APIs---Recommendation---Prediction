package com.university.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.university.Service.*;
/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Service service = new Service();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		try{
			String email = request.getParameter("email");

		System.out.println("Username is "+email);
		boolean result =service.chkValidUser(email);
		System.out.println("Result is "+result);

		if (result) 
		{
		out.println("<b>"+email+"</b> is avaliable");
//		response.sendRedirect("home");
		}
		else
		{
//			response.sendRedirect("home");

		out.println("<font color=red><b>"+email+"</b> is already in use</font>");
		}        

}
	
	
	catch (Exception ex)
	{
	out.println("Error ->" + ex.getMessage());
	}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("password_confirmation");
		boolean isUserRegistered = service.registerUser(firstName, lastName, email, password, confirmpassword);
		if(isUserRegistered)
			response.sendRedirect("success.jsp");
		else
			response.sendRedirect("failure.jsp");
		}
		catch (Exception ex)
		{
			response.sendRedirect("failure.jsp");

	}

	}}
