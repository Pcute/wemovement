package dao.impl;

import dao.RecordDAO;
import domain.Record;
import jdbc.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RecordDAOimpl implements RecordDAO {
	@Override
	public List<Record> getAll(int stuId) throws Exception{
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			List<Record> list=new ArrayList<>();
			conn=JDBCUtil.getconn();
			String sql="select stu_id,act_id,sign_time,record_audit,record_result,record_status\n" +
					"from record\n" +
					"where stu_id=?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,stuId);
			rs=ps.executeQuery();
			while (rs.next()){
				Record record=new Record();
				record.setStuId(rs.getInt(1));
				record.setActId(rs.getInt(2));
				record.setSignTime(rs.getString(3));
				record.setRecordAudit(rs.getString(4));
				record.setRecordResult(rs.getString(5));
				record.setRecordStatus(rs.getString(6));
				list.add(record);
			}
			return list;
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}

	@Override
	public Record insert(Record record) throws Exception{
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=JDBCUtil.getconn();
			String sql="insert into record(stu_id,act_id,sign_time,record_audit,record_result,record_status)\n" +
					"value(?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,record.getStuId());
			ps.setObject(2,record.getActId());
			ps.setObject(3,record.getSignTime());
			ps.setObject(4,record.getRecordAudit());
			ps.setObject(5,record.getRecordResult());
			ps.setObject(6,record.getRecordStatus());
			ps.executeUpdate();
		} finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return null;
	}
}
