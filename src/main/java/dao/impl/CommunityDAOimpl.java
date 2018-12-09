package dao.impl;

import dao.CommunityDAO;
import domain.Community;
import jdbc.util.JDBCUtil;

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
		List<Community> list=new ArrayList<>();
		list=null;
		try{
			conn= JDBCUtil.getconn();
			String sql="select community_picture,community_name from community where cla_id=?";
			ps=conn.prepareStatement(sql);
			ps.setObject(1,id);
			rs=ps.executeQuery();
			while (rs.next()){
				Community act =new Community();
				act.setCommunityPicture(rs.getString(1));
				act.setCommunityName(rs.getString(2));
				list.add(act);
			}
		}catch (Exception e){

		}finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return list;
	}
}
