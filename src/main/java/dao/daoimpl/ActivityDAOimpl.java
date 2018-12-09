package dao.daoimpl;

import dao.ActivityDAO;
import domain.Activity;
import jdbc.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ActivityDAOimpl implements ActivityDAO {
	@Override
	public List<Activity> getNew(int size) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Activity> list=new ArrayList();
		try{
			conn= JDBCUtil.getconn();
			String sql="select activity_picture,activity_intro from activity\n" +
					"order by sign_time DESC LIMIT 0,?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,size);
			rs=ps.executeQuery();
			while(rs.next()){
			Activity act=new Activity();
			act.setActivityPicture(rs.getString(1));
			act.setActivityIntro(rs.getString(2));
			list.add(act);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return list;
	}

	@Override
	public List<Activity> getRecommdation(int size) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Activity> list=new ArrayList();
		try{
			conn= JDBCUtil.getconn();
			String sql="select activity_picture,activity_intro from activity\n" +
					"order by activity_time DESC LIMIT 0,?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,size);
			rs=ps.executeQuery();
			while(rs.next()){
				Activity act=new Activity();
				act.setActivityPicture(rs.getString(1));
				act.setActivityIntro(rs.getString(2));
				list.add(act);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return list;
	}
}
