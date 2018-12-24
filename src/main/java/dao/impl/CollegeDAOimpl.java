package dao.impl;


import dao.CollegeDAO;
import domain.College;
import jdbc.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CollegeDAOimpl implements CollegeDAO {
	@Override
	public College loginSelect(String user_no, String user_pwd) {
		String sql="select college_id,college_no,college_pwd,college_name,college_intro,picture,tele,email from college where college_no=? and college_pwd=?";
		int flag=0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs=null;
		College college=null;
		try {
			conn= JDBCUtil.getconn();
			ps = conn.prepareStatement(sql);
			ps.setObject( 1, user_no);
			ps.setObject( 2, user_pwd);
			rs=ps.executeQuery();
			if(rs.next()) {
				college=new College();
				college.setCollegeId(rs.getInt(1));
				college.setCollegeNo(rs.getString(2));
				college.setCollegePwd(rs.getString(3));
				college.setCollegeName(rs.getString(4));
				college.setCollegeIntro(rs.getString(5));
				college.setPicture(rs.getString(6));
				college.setTele(rs.getString(7));
				college.setEmail(rs.getString(8));
			}
			return college;
		} catch (Exception e) {
			return null;
		} finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}
}
