package com.controller;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.google.gson.Gson;
import com.model.Record;
import com.model.SectionAjaxDao;
import com.model.SubDivsionAjaxDao;

import java.io.*;
import java.util.*;
@WebServlet("/SectionAjaxServlet")

public class SectionAjaxServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		SectionAjaxDao dao = new SectionAjaxDao();
		int sdivNo = Integer.parseInt(request.getParameter("sdivNo"));
//		System.out.println(sdivNo);
		List<Record> section = dao.FetchSection(sdivNo);
		Map<Integer, String> sectionMap = new HashMap<>();
		for (Record sec : section) {
            sectionMap.put(sec.getSecID(),sec.getSecName());
        }
		Gson gson = new Gson();
	    String json = gson.toJson(sectionMap);
//	    System.out.println(json);
	    response.setContentType("application/json");
	    out.println(json);
    }
}