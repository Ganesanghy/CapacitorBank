package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SubDivDao {
	public Record subdivisionName(int circleId, int divisionId, int subdivId) {
        
		Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            String query = "jdbc:mysql://localhost:3306/capacitorbank";
            String user = "root";
            String pwd = "root";
            String sql = "select Sub_Division from sub_division where Circle_ID=? AND Division_ID=? AND Sub_Division_ID=?";
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            con = DriverManager.getConnection(query, user, pwd);
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, circleId);
            pstmt.setInt(2, divisionId);
            pstmt.setInt(3, subdivId);
            rs = pstmt.executeQuery();
            if (rs.next()) {
            	Record r = new Record();
            	r.setSubDivName(rs.getString(1));
            	return r;
            }
            
        } catch (Exception se) {
            se.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        
        return null; 
    }
    
}
