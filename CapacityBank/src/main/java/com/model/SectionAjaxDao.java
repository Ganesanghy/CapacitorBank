package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SectionAjaxDao{
	public List<Record> FetchSection(int sdivNo) {
	    List<Record> section = new ArrayList<>();
	    Connection con = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    try {
	        String query = "jdbc:mysql://localhost:3306/capacitorbank?useSSL=false&serverTimezone=UTC";
	        String user = "root";
	        String pwd = "root";
	        String sql = "SELECT Section_ID, Section FROM section WHERE Sub_Division_ID=?";
	        
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        
	        con = DriverManager.getConnection(query, user, pwd);
	        pstmt = con.prepareStatement(sql);
	        pstmt.setInt(1, sdivNo);
	        
	        rs = pstmt.executeQuery();
	        
	        while (rs.next()) {
	            Record sec = new Record();
	            sec.setSecID(rs.getInt(1));
	            sec.setSecName(rs.getString(2));
	            section.add(sec);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (con != null) con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	    }
	    return section;
	}

}
