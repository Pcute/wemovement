package dao.impl;

import domain.College;
import org.junit.Test;

import static org.junit.Assert.*;

public class CollegeDAOimplTest {

	@Test
	public void loginSelect() {
		CollegeDAOimpl dao=new CollegeDAOimpl();
		College col=new College();
		col=dao.loginSelect("1111","1234");
		System.out.println(col.getCollegeName());

	}
}