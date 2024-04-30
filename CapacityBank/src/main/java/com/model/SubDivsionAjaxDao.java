package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SubDivsionAjaxDao{
	public List<Record> FetchSubDivision(int divNo) {
	    List<Record> sdiv = new ArrayList<>();
	    Connection con = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    try {
	        String query = "jdbc:mysql://localhost:3306/capacitorbank?useSSL=false&serverTimezone=UTC";
	        String user = "root";
	        String pwd = "root";
	        String sql = "SELECT Sub_Division_ID, Sub_Division FROM sub_division WHERE Division_ID=?";
	        
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        
	        con = DriverManager.getConnection(query, user, pwd);
	        pstmt = con.prepareStatement(sql);
	        pstmt.setInt(1, divNo);
	        
	        rs = pstmt.executeQuery();
	        
	        while (rs.next()) {
	            Record sd = new Record();
	            sd.setSdivID(rs.getInt(1));
	            sd.setSubDivName(rs.getString(2));
	            sdiv.add(sd);
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
	    return sdiv;
	}

}
