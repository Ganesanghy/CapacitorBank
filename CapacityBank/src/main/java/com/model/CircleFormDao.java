package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CircleFormDao {
	public Record Form(String uname) {
        
		Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            String query = "jdbc:mysql://localhost:3306/capacitorbank";
            String user = "root";
            String pwd = "root";
            String sql = "select Circle from users where UserName=?";
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            con = DriverManager.getConnection(query, user, pwd);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, uname);
            rs = pstmt.executeQuery();
            if (rs.next()) {
            	Record r = new Record();
            	r.setCircle(rs.getString(1));
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
