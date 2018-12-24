package dao.impl;

import dao.ActivityDAO;
import domain.Activity;
import jdbc.util.JDBCUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

public class ActivityDAOimpl implements ActivityDAO {
	@Override
	public List<Activity> getNew(int size) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Activity> list=new ArrayList<>();
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
		List<Activity> list=new ArrayList<>();
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
				act.setPeopleNum(rs.getInt(8));
				act.setAddress(rs.getString(9));
				act.setSignTime(rs.getString(10));
				act.setActivityTime(rs.getString(11));
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
	public List<Activity> getAll()  {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Activity>list=new ArrayList<>();
		try {
			conn=JDBCUtil.getconn();
			/*String sql="select activity_name,ini_id,ini_type,ini_name,activity_topic,activity_intro,activity_picture,people_num,address,sign_time,activity_time,activity_state,activity_audit,activity_id" +
					"from activity";*/
			String sql="select activity_name,activity_picture,activity_time,activity_intro from activity";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while (rs.next()){
				Activity act =new Activity();
				act.setActivityName(rs.getString(1));
				act.setActivityPicture(rs.getString(2));
				act.setActivityTime(rs.getString(3));
				act.setActivityIntro(rs.getString(4));
				/*act.setIniId(rs.getInt(2));
				act.setIniType(rs.getString(3));
				act.setIniName(rs.getString(4));
				act.setActivityTopic(rs.getString(5));
				act.setActivityIntro(rs.getString(6));
				act.setActivityPicture(rs.getString(7));
				act.setPeopleNum(rs.getInt(8));
				act.setAddress(rs.getString(9));
				act.setSignTime(rs.getString(10));
				act.setActivityTime(rs.getString(11));
				act.setActivityState(rs.getString(12));
				act.setActivityAudit(rs.getString(13));
				act.setActivityId(rs.getInt(14));*/
				list.add(act);
			}
			return list;
		}catch (Exception e){
		/*	list=null;
			return null;*/
		return null;
		}
		finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}

	@Override
	public Activity getActIntro(int id) {
		Activity act=new Activity();
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=JDBCUtil.getconn();
			String sql="select activity_name,ini_id,ini_type,ini_name,activity_topic,activity_intro,activity_picture,people_num,peo_num,address,sign_time,activity_time,activity_state,activity_audit\n" +
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
				act.setPeopleNum(rs.getInt(8));
				act.setPeoNum(rs.getInt(9));
				act.setAddress(rs.getString(10));
				act.setSignTime(rs.getString(11));
				act.setActivityTime(rs.getString(12));
				act.setActivityState(rs.getString(13));
				act.setActivityAudit(rs.getString(14));
			}
		}catch (Exception e){
			e.printStackTrace();
			act=null;
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
		//List<Activity> list= new ArrayList<Activity>();
		try {
			conn=JDBCUtil.getconn();
			String sql="insert into activity (cla_id,activity_name,ini_id,ini_type,ini_name,activity_topic,activity_intro,activity_picture,people_num,peo_num,address,sign_time,activity_time,activity_state,activity_audit) \n" +
					"values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,act.getClaId());
			ps.setObject(2,act.getActivityName());
			ps.setObject(3,act.getIniId());
			ps.setObject(4,act.getIniType());
			ps.setObject(5,act.getIniName());
			ps.setObject(6,act.getActivityTopic());
			ps.setObject(7,act.getActivityIntro());
			ps.setObject(8,act.getActivityPicture());
			ps.setObject(9,act.getPeopleNum());
			ps.setObject(10,act.getPeoNum());
			ps.setObject(11,act.getAddress());
			//	ps.setObject(12,"2018-12-01");//act.getSignTime());
			//ps.setObject(12,new Timestamp((new Date()).getTime()));
			// act.getActivityTime());
			ps.setObject(12,act.getSignTime());
			ps.setObject(13,act.getActivityTime());
			ps.setObject(14,act.getActivityState());
			ps.setObject(15,act.getActivityAudit());
			ps.executeUpdate();
			//list.add(act);
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}

	@Override
	public void updateAct(Activity act) throws Exception {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		//List<Activity> list= new ArrayList<Activity>();
		try {
			conn=JDBCUtil.getconn();
			String sql="update  activity (cla_id,activity_name,ini_id,ini_type,ini_name,activity_topic,activity_intro,activity_picture,people_num,peo_num,address,sign_time,activity_time,activity_state,activity_audit) \n" +
					"set (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) where activity_id=act.activity_id";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,act.getClaId());
			ps.setObject(2,act.getActivityName());
			ps.setObject(3,act.getIniId());
			ps.setObject(4,act.getIniType());
			ps.setObject(5,act.getIniName());
			ps.setObject(6,act.getActivityTopic());
			ps.setObject(7,act.getActivityIntro());
			ps.setObject(8,act.getActivityPicture());
			ps.setObject(9,act.getPeopleNum());
			ps.setObject(10,act.getPeoNum());
			ps.setObject(11,act.getAddress());
			ps.setObject(12,act.getSignTime());
			ps.setObject(13,act.getActivityTime());
			ps.setObject(14,act.getActivityState());
			ps.setObject(15,act.getActivityAudit());
			ps.executeUpdate();
			//list.add(act);
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}

	@Override
	public List<Activity> getNewAct(int comId) throws Exception {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Activity>list= new ArrayList<>();
		try {
			conn=JDBCUtil.getconn();
			String sql="select activity_id,cla_id,activity_name,activity_topic,activity_intro,activity_picture,people_num,peo_num,address\n" +
					"from activity \n" +
					"where activity.ini_type='社团' \n" +
					"and activity.ini_id=? and activity_state='正在举办'";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,comId);
			rs=ps.executeQuery();
			while (rs.next()){
				Activity act=new Activity();
				act.setActivityId(rs.getInt(1));
				act.setClaId(rs.getInt(2));
				act.setActivityName(rs.getString(3));
				act.setActivityTopic(rs.getString(4));
				act.setActivityIntro(rs.getString(5));
				act.setActivityPicture(rs.getString(6));
				act.setPeopleNum(rs.getInt(7));
				act.setPeoNum(rs.getInt(8));
				act.setAddress(rs.getString(9));
				list.add(act);
			}
			return list;
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}

	@Override
	public List<Activity> getOldAct(int comId) throws Exception {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Activity> list= new ArrayList<>();
		try {
			conn=JDBCUtil.getconn();
			String sql="select activity_id,cla_id,activity_name,activity_topic,activity_intro,activity_picture,people_num,peo_num,address\n" +
					"from activity \n" +
					"where activity.ini_type='社团' \n" +
					"and activity.ini_id=? and activity_state='已举办'";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,comId);
			rs=ps.executeQuery();
			while (rs.next()){
				Activity act=new Activity();
				act.setActivityId(rs.getInt(1));
				act.setClaId(rs.getInt(2));
				act.setActivityName(rs.getString(3));
				act.setActivityTopic(rs.getString(4));
				act.setActivityIntro(rs.getString(5));
				act.setActivityPicture(rs.getString(6));
				act.setPeopleNum(rs.getInt(7));
				act.setPeoNum(rs.getInt(8));
				act.setAddress(rs.getString(9));
				list.add(act);
			}
			return list;
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}
}
