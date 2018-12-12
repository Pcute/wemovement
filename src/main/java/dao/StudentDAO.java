package dao;

import domain.Student;

public interface StudentDAO {
    int insert(Student student);
    int select(Student student);
}
