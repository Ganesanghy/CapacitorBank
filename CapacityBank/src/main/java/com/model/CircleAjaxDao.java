package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CircleAjaxDao{
	public List<Record> FetchDivision(int circleNo) {
	    List<Record> div = new ArrayList<>();
	    Connection con = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    try {
	        String query = "jdbc:mysql://localhost:3306/capacitorbank?useSSL=false&serverTimezone=UTC";
	        String user = "root";
	        String pwd = "root";
	        String sql = "SELECT Division_ID, Division FROM division WHERE Circle_ID=?";
	        
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        
	        con = DriverManager.getConnection(query, user, pwd);
	        pstmt = con.prepareStatement(sql);
	        pstmt.setInt(1, circleNo);
	        
	        rs = pstmt.executeQuery();
	        
	        while (rs.next()) {
	            Record d = new Record();
	            d.setDivID(rs.getInt(1));
	            d.setDivName(rs.getString(2));
	            div.add(d);
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
	    return div;
	}

}
