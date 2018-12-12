package dao.impl;

import dao.ActivityDAO;
import domain.Activity;
import jdbc.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ActivityDAOimpl implements ActivityDAO {
	@Override
	public List<Activity> getNew(int size) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Activity> list=new ArrayList();
	//	;
		try{
			conn= JDBCUtil.getconn();
			String sql="select activity_picture,activity_name from activity\n" +
					"order by sign_time DESC LIMIT 0,?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,size);
			rs=ps.executeQuery();
			while(rs.next()){
			Activity act=new Activity();
			act.setActivityPicture(rs.getString(1));
			act.setActivityName(rs.getString(2));
			list.add(act);
			}
		} catch (Exception e) {
			e.printStackTrace();
			list=null;
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
	//	list=null;
		try{
			conn= JDBCUtil.getconn();
			String sql="select activity_picture,activity_name from activity\n" +
					"order by activity_time DESC LIMIT 0,?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,size);
			rs=ps.executeQuery();
			while(rs.next()){
				Activity act=new Activity();
				act.setActivityPicture(rs.getString(1));
				act.setActivityName(rs.getString(2));
				list.add(act);
			}
		} catch (Exception e) {
			e.printStackTrace();
			list=null;
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return list;
	}

	@Override
	public List<Activity> getClass(int id) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Activity> list=new ArrayList<Activity>();

		try{
			conn=JDBCUtil.getconn();
			String sql="select activity_name,ini_id,ini_type,ini_name,activity_topic,activity_intro,activity_picture,people_num,address,sign_time,activity_time,activity_state,activity_audit,activity_id " +
					"from activity where cla_id=?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,id);
			rs=ps.executeQuery();
			while (rs.next()){
				Activity act =new Activity();
				act.setActivityName(rs.getString(1));
				act.setIniId(rs.getInt(2));
				act.setIniType(rs.getString(3));
				act.setIniName(rs.getString(4));
				act.setActivityTopic(rs.getString(5));
				act.setActivityIntro(rs.getString(6));
				act.setActivityPicture(rs.getString(7));
				act.setPeopleNum(rs.getString(8));
				act.setAddress(rs.getString(9));
				act.setSignTime(rs.getTime(10));
				act.setActivityTime(rs.getTime(11));
				act.setActivityState(rs.getString(12));
				act.setActivityAudit(rs.getString(13));
				act.setActivityId(rs.getInt(14));
				list.add(act);
			}
		}catch (Exception e){
			list=null;
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return list;
	}

	@Override
	public Activity getActIntro(int id) {
		Activity act=new Activity();
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=JDBCUtil.getconn();
			String sql="select activity_name,ini_id,ini_type,ini_name,activity_topic,activity_intro,activity_picture,people_num,address,sign_time,activity_time,activity_state,activity_audit\n" +
					"from activity where activity_id=?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,id);
			rs=ps.executeQuery();
			while (rs.next()){
				act.setActivityName(rs.getString(1));
				act.setIniId(rs.getInt(2));
				act.setIniType(rs.getString(3));
				act.setIniName(rs.getString(4));
				act.setActivityTopic(rs.getString(5));
				act.setActivityIntro(rs.getString(6));
				act.setActivityPicture(rs.getString(7));
				act.setPeopleNum(rs.getString(8));
				act.setAddress(rs.getString(9));
				act.setSignTime(rs.getTime(10));
				act.setActivityTime(rs.getTime(11));
				act.setActivityState(rs.getString(12));
				act.setActivityAudit(rs.getString(13));
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		finally {
			JDBCUtil.close(conn,ps,rs);
		}

		return act;
	}

	@Override
	public void insertNewAct(Activity act) throws Exception  {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Activity> list= new ArrayList<Activity>();
		try {
			conn=JDBCUtil.getconn();
			String sql="insert into activity (activity_name,ini_id,ini_type,ini_name,activity_topic,activity_intro,activity_picture,people_num,address,sign_time,activity_time,activity_state,activity_audit,cla_id) \n" +
					"values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,act.getActivityName());
			ps.setObject(2,act.getIniId());
			ps.setObject(3,act.getIniType());
			ps.setObject(4,act.getIniName());
			ps.setObject(5,act.getActivityTopic());
			ps.setObject(6,act.getActivityIntro());
			ps.setObject(7,act.getActivityPicture());
			ps.setObject(8,act.getPeopleNum());
			ps.setObject(9,act.getAddress());
			ps.setObject(10,act.getSignTime());
			ps.setObject(11,act.getActivityTime());
			ps.setObject(12,act.getActivityState());
			ps.setObject(13,act.getActivityAudit());
			ps.setObject(14,act.getClaId());
			list.add(act);
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}
}
