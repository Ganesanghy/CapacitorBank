package com.controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.google.gson.Gson;
import com.model.Record;
import com.model.SubDivsionAjaxDao;

import java.io.*;
import java.util.*;
@WebServlet("/SubDivServlet")

public class SubDivServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		SubDivsionAjaxDao dao = new SubDivsionAjaxDao();
		int divNo = Integer.parseInt(request.getParameter("divNo"));
//		System.out.println(divNo);
		List<Record> sdivision = dao.FetchSubDivision(divNo);
		Map<Integer, String> subDivisionMap = new HashMap<>();
		for (Record sdiv : sdivision) {
            subDivisionMap.put(sdiv.getSdivID(),sdiv.getSubDivName());
        }
		Gson gson = new Gson();
	    String json = gson.toJson(subDivisionMap);
//	    System.out.println(json);
	    response.setContentType("application/json");
	    out.println(json);
    }
}