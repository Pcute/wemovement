package dao;

import domain.Student;

public interface StudentDAO {
    public int insert(Student student);
    public int select(Student student);
    public void update(Student student) throws Exception;
    public void resetPwd(int id,String pwd) throws Exception;
}
