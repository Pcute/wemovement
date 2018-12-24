package dao.impl;

import dao.StudentDAO;
import domain.Student;
import org.junit.Test;

import static org.junit.Assert.*;

public class StudentDAOimplTest {

	@Test
	public void select() {
	}

	@Test
	public void update() {
	}

	@Test
	public void resetPwd() {
	}

	@Test
	public void loginSelect() {
		StudentDAO dao=new StudentDAOimpl();
		String uNo="201626701048";
		String uPwd="1234";
		Student stu=dao.loginSelect(uNo,uPwd);
		System.out.println(stu.getStuName());
	}

	@Test
	public void infoSelect() {
	}

	@Test
	public void selectAll() {
	}
}