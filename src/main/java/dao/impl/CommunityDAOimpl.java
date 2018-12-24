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
			list=null;
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}

		return list;
	}

	@Override
	public Community getCommIntro(int id) throws Exception {
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		Community community=null;
		try {
			conn=JDBCUtil.getconn();
			String sql="select type_id,community_no,community_pwd,community_name,community_intro,community_picture,tele,community_address,email\n" +
					"from community where community_id=?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,id);
			rs=ps.executeQuery();
			while (rs.next()){
				community=new Community();
				community.setTypeId(rs.getInt(1));
				community.setCommunityNo(rs.getString(2));
				community.setCommunityPwd(rs.getString(3));
				community.setCommunityName(rs.getString(4));
				community.setCommunityIntro(rs.getString(5));
				community.setCommunityPicture(rs.getString(6));
				community.setTele(rs.getString(7));
				community.setCommunityAddress(rs.getString(8));
				community.setEmail(rs.getString(9));
			}
			return community;
		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}

	@Override
	public int insert(Community community) {
		String sql="insert into community(community_name,community_pwd,email,community_intro) value(?,?,?,?)";
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs=null;
		try {
			conn=JDBCUtil.getconn();
			ps = conn.prepareStatement(sql);
			ps.setObject( 1, community.getCommunityName());
			ps.setObject( 2, community.getCommunityPwd());
			ps.setObject(3,community.getEmail());
			ps.setObject(4,community.getCommunityIntro());
			return ps.executeUpdate();      //修改成功返回1
		} catch (Exception e) {

		} finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return 0;
	}

	@Override
	public Community loginSelect(String user_no, String user_pwd) {
		String sql="select community_id,type_id,community_no,community_pwd,community_name,community_intro,community_picture,tele,community_address,email from community where community_no=? and community_pwd=?";
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs=null;
		Community community=null;
		try {
			conn=JDBCUtil.getconn();
			ps = conn.prepareStatement(sql);
			ps.setObject( 1,user_no);
			ps.setObject( 2,user_pwd);
			rs=ps.executeQuery();
			if(rs.next()) {
				community=new Community();
				community.setCommunityId(rs.getInt(1));
				community.setTypeId(rs.getInt(2));
				community.setCommunityNo(rs.getString(3));
				community.setCommunityPwd(rs.getString(4));
				community.setCommunityName(rs.getString(5));
				community.setCommunityIntro(rs.getString(6));
				community.setCommunityPicture(rs.getString(7));
				community.setTele(rs.getString(8));
				community.setCommunityAddress(rs.getString(9));
				community.setEmail(rs.getString(10));
			}
			return community;
		} catch (Exception e) {
			return null;
		} finally {
			JDBCUtil.close(conn,ps,rs);
		}
	}
}
