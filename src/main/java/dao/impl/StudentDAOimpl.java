package dao.impl;

import dao.StudentDAO;
import domain.Student;
import jdbc.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class StudentDAOimpl implements StudentDAO {

	@Override
	public int select(Student stu) {
		String sql="insert into student(stu_no,stu_pwd) value(?,?)";
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs=null;
		try {
			conn=JDBCUtil.getconn();
			ps = conn.prepareStatement(sql);

			ps.setObject( 1, stu.getStuNo());
			ps.setObject( 2, stu.getStuPwd());
			return ps.executeUpdate();      //修改成功返回1
		} catch (Exception e) {

		} finally {
			JDBCUtil.close(conn,ps,rs);
		}
		return 0;
	}

	@Override
    public void update(Student student) throws Exception {
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn=JDBCUtil.getconn();
            String sql="update student set stu_nickname=? stu_sex=?,hobby=?,picture=?" +
                    "tele=? where stu_No=student.stuNo";
            ps=conn.prepareStatement(sql);
            ps.setObject(1,student.getStuNickName());
            ps.setObject(2,student.getStuSex());
            ps.setObject(3,student.getHobby());
            ps.setObject(4,student.getPicture());
            ps.setObject(5,student.getTele());
            ps.executeUpdate();

        }finally {
            JDBCUtil.close(conn,ps,rs);
        }
    }

    @Override
    public void resetPwd(int id,String pwd) throws Exception {
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn=JDBCUtil.getconn();
            String sql="update student set stu_pwd=? where stu_id=id";
            ps=conn.prepareStatement(sql);
            ps.setObject(1,pwd);
            ps.executeUpdate();
        }finally {
            JDBCUtil.close(conn,ps,rs);
        }
    }

	@Override
	public Student loginSelect(String user_no, String user_pwd) {
		String sql="select stu_id,stu_No,stu_pwd,stu_name,stu_nickname,stu_sex,hobby,picture,tele,class_id from student where stu_no=? and stu_pwd=?";
		int flag=0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs=null;
		Student student=null;
		try {
			conn=JDBCUtil.getconn();
			ps = conn.prepareStatement(sql);
			ps.setObject( 1, user_no);
			ps.setObject( 2, user_pwd);
			rs=ps.executeQuery();
			if(rs.next()) {
				student=new Student();
				student.setStuId(rs.getInt(1));
				student.setStuNo(rs.getString(2));
				student.setStuPwd(rs.getString(3));
				student.setStuName(rs.getString(4));
				student.setStuNickName(rs.getString(5));
				student.setStuSex(rs.getString(6));
				student.setHobby(rs.getString(7));
				student.setPicture(rs.getString(8));
				student.setTele(rs.getString(9));
				student.setClassId(rs.getInt(10));
			}
			return student;
		} catch (Exception e) {
			return null;
		} finally {
			JDBCUtil.close(conn,ps,rs);
		}

	}

	@Override
	public Student infoSelect(String stu_no) {
		String sql ="select stu_no,stu_name,stu_nickname,stu_sex,tele,picture from student where stu_no=?";
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet resultSet=null;
		Student student=null;
		try {
			conn=JDBCUtil.getconn();
			ps = conn.prepareStatement(sql);
			ps.setObject(1,stu_no);
			resultSet=ps.executeQuery();
			if(resultSet.next()){
				student=new Student();
				student.setStuNo(resultSet.getString("stu_no"));
				student.setStuName(resultSet.getString("stu_name"));
				student.setStuNickName(resultSet.getString("stu_nickname"));
				student.setStuSex(resultSet.getString("stu_sex"));
				student.setTele(resultSet.getString("tele"));
				student.setPicture(resultSet.getString("picture"));
			}
			return student;
		} catch (Exception e) {
			return null;
		} finally {
			JDBCUtil.close(conn,ps,resultSet);
		}

	}
}
