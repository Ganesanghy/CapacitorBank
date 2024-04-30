package com.controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.google.gson.Gson;
import com.model.CircleAjaxDao;
import com.model.Record;

import java.io.*;
import java.util.*;
@WebServlet("/CircleAjaxServlet")

public class CircleAjaxServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		CircleAjaxDao dao = new CircleAjaxDao();
		int circleNo = Integer.parseInt(request.getParameter("cd"));
//		System.out.println(circleNo);
		List<Record> division = dao.FetchDivision(circleNo);
		Map<Integer, String> divisionMap = new HashMap<>();
		for (Record div : division) {
            divisionMap.put(div.getDivID(),div.getDivName());
        }
		Gson gson = new Gson();
	    String json = gson.toJson(divisionMap);
//	    System.out.println(json);
	    response.setContentType("application/json");
	    out.println(json);
    }
}