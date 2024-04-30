package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CircleDao;
import com.model.DivisionDao;
import com.model.Record;
import com.model.SectionDao;
import com.model.SubDivDao;
@WebServlet("/CapacitorBankFormServlet")
public class CapacitorBankFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CircleDao cir = new CircleDao();
		DivisionDao div = new DivisionDao();
		SubDivDao sdiv = new SubDivDao();
		SectionDao sec = new SectionDao();
		
		int circle = Integer.parseInt(request.getParameter("circle"));
		int division = Integer.parseInt(request.getParameter("division"));
		int subdiv = Integer.parseInt(request.getParameter("subdiv"));
		int session = Integer.parseInt(request.getParameter("sec"));
		
		Record circleNme = cir.circleName(circle);
		Record divisionNme = div.divisionName(circle, division);
		Record subdivNme = sdiv.subdivisionName(circle, division, subdiv);
		Record secNme = sec.sectionName(circle, division, subdiv, session);
		
		String circleName = (String) circleNme.getCircle();
		String divisionName = divisionNme.getDivName();
		String subdivName = subdivNme.getSubDivName();
		String secName = secNme.getSecName();
		
		String Sub_Station_Type = request.getParameter("");
		String Sub_Station_Type_A = request.getParameter("");
		String Sub_Station_Type_B = request.getParameter("");
		
		String Geographic_Circle = request.getParameter("");
		String Geographic_Location = request.getParameter("");
		
		String CB_Available = request.getParameter("");
		String CB_Type = request.getParameter("");
		String CB_Make = request.getParameter("");
		String CB_Capacity = request.getParameter("");
		String Cell_Rated_Value = request.getParameter("");
		String No_Of_Cells_Existing = request.getParameter("");
		
		String Work_Status = request.getParameter("");
		String From_Date = request.getParameter("");
		String To_Date = request.getParameter("");
		String Remarks = request.getParameter("");
		String No_of_Cells = request.getParameter("");
	}

}