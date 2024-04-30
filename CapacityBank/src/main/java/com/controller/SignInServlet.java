package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.SignInDao;
import com.model.Record;


@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String username = request.getParameter("uname");
	    String password = request.getParameter("pwd");
	    String circle = null;
	    SignInDao sign = new SignInDao();
	    Record result = sign.login(username, password);
	    if (result != null) {
	        String roll = result.getRoll();
	        circle = result.getCircle();
//	        System.out.print(circle);
	        String uname = result.getUsername();
	        if (circle.equals("Tirupati")) {
	            if (roll.equals("admin")) {
	                // If the user is admin, forward to admin.jsp
	                RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
	                rd.forward(request, response);
	            } else if (roll.equals("user")) {
	                // If the user is a regular user, set uname in session and redirect to nav.jsp
	            	
	            	HttpSession session = request.getSession();
	                session.setAttribute("circle", circle);
	        	    
	                request.setAttribute("uname", uname);
	                RequestDispatcher rd = request.getRequestDispatcher("nav.jsp");
	                rd.forward(request, response);
	                
	            }
	        }
	    } else {
	        // Handle invalid login
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('Invalid username and password')</script>");
	        return; // return to avoid further processing of the request
	    }
	}


}
