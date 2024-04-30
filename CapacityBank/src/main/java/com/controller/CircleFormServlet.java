package com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.model.CircleAjaxPojo;
import com.model.CircleFormDao;
import com.model.Record;

/**
 * Servlet implementation class CircleFormServlet
 */
@WebServlet("/CircleFormServlet")
public class CircleFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		CircleFormDao form = new CircleFormDao();
		Record record = form.Form(uname);
		String circleName = record.getCircle();
		
		HttpSession session = request.getSession();
		session.setAttribute("circleName", circleName);
		response.sendRedirect("nav.jsp");
		
//		request.setAttribute("circleName", circleName);
//	    RequestDispatcher rd = request.getRequestDispatcher("addDetails.jsp");
//	    rd.forward(request, response);
//	    response.sendRedirect("nav.jsp");
//		System.out.println(circleName);
//		request.setAttribute("circleName", circleName);
//		RequestDispatcher rd = request.getRequestDispatcher("addDetails.jsp");
//		rd.forward(request, response);
//		Map<String, String> circleMap = new HashMap<>();
//		circleMap.put("circlename", circleName);
//		Gson gson = new Gson();
//	    String json = gson.toJson(circleMap);
//	    request.setAttribute("json",json);
	}

}
