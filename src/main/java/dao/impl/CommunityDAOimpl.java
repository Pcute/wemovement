package dao.impl;

import dao.CommunityDAO;
import domain.Community;
import jdbc.util.JDBCUtil;
import jdk.nashorn.internal.scripts.JD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CommunityDAOimpl implements CommunityDAO {
	@Override
	public List<Community> getComClass(int id) {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Community> list=new ArrayList<Community>();
		try{
			conn= JDBCUtil.getconn();
			String sql="select community_picture,community_name,community_intro from community where type_id=?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,id);
			rs=ps.executeQuery();
			while (rs.next()){
				Community act =new Community();
				act.setCommunityPicture(rs.getString(1));
				act.setCommunityName(rs.getString(2));
				act.setCommunityIntro(rs.getString(3));
				list.add(act);
			}
		}catch (Exception e){
			e.printStackTrace();
               list=null;
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return list;
	}

	@Override
	public List<Community> getAll() {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Community> list=new ArrayList<Community>();
		try {
			conn=JDBCUtil.getconn();
			String sql="select community_picture,community_name ,community_intro from community";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while (rs.next()){
				Community com=new Community();
				com.setCommunityPicture(rs.getString(1));
				com.setCommunityName(rs.getString(2));
				com.setCommunityIntro(rs.getString(3));
				list.add(com);
			}
		}catch (Exception e){

		}finally {
			JDBCUtil.close(conn,ps,rs);
		}

		return list;
	}
}
