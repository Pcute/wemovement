package dao.impl;

import dao.StudentDAO;
import domain.Student;
import jdbc.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StudentDAOimpl implements StudentDAO {

    @Override
    public int insert(Student student) {
        String sql="insert into student(stu_no,stu_pwd) value(?,?)";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs=null;
        try {
            conn=JDBCUtil.getconn();
            ps = conn.prepareStatement(sql);

            ps.setObject( 1, student.getStuNo());
            ps.setObject( 2, student.getStuPwd());
            return ps.executeUpdate();      //修改成功返回1
        } catch (Exception e) {

        } finally {
            JDBCUtil.close(conn,ps,rs);
        }
        return 0;
    }

    @Override
    public int select(Student student) {
        String sql="select *from student where stu_no=? and stu_pwd=?";
        int flag=0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs=null;
        try {
            conn=JDBCUtil.getconn();
            ps = conn.prepareStatement(sql);

            ps.setObject( 1, student.getStuNo());
            ps.setObject( 2, student.getStuPwd());
            if(ps.executeQuery().next()) flag++;
            return flag; //存在查询结果 返回1
        } catch (Exception e) {

        } finally {
            JDBCUtil.close(conn,ps,rs);
        }
        return 0;
    }
}
