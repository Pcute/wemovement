package dao.impl;

import dao.ClassificationDAO;
import domain.Classification;
import jdbc.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClassificationDAOimpl implements ClassificationDAO {

	@Override
	public List<Classification> getAll() throws Exception {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Classification> list =null;
		try {
			conn = JDBCUtil.getconn();
			String sql = "select * from classification";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				list=new ArrayList<>();
				Classification cla = new Classification();
				cla.setClaId(rs.getInt(1));
				cla.setClaNo(rs.getString(2));
				cla.setClaName(rs.getString(3));
				cla.setCreditsId(rs.getInt(4));
				cla.setColumeId(rs.getInt(5));
				list.add(cla);
			}
			return list;
		} finally {
			JDBCUtil.close(conn, ps, rs);
		}
	}

	@Override
	public Classification get(int id) {

		Classification cla=new Classification();
		return null;
	}
}
