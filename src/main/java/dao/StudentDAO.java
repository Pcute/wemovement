package dao;

import domain.Student;

import java.util.List;

public interface StudentDAO {
    public void update(Student student) throws Exception;
    public void resetPwd(int id,String pwd) throws Exception;
    //老王
    public Student loginSelect(String user_no,String user_pwd);
    public Student infoSelect(String stu_no);
    public int select(Student stu);
}
