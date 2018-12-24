package dao.impl;

import dao.RecordDAO;
import domain.Record;
import jdbc.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class RecordDAOimpl implements RecordDAO {
	@Override
	public List<Record> getAll() {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Record>list =null;
		try {
			conn=JDBCUtil.getconn();
			String sql="";
		}catch (Exception e){

		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return null;
	}

	@Override
	public Record insert() {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		Record record=null;
		try {
			conn=JDBCUtil.getconn();
			String sql="intsert into ";
			ps=conn.prepareStatement(sql);

		}catch (Exception d){

		}
		finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return null;
	}
}
