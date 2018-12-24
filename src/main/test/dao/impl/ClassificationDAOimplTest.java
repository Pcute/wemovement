package dao.impl;

import dao.ClassificationDAO;
import domain.Classification;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

public class ClassificationDAOimplTest {


	@Test
	public void getAll() throws Exception {
		ClassificationDAO dao=new ClassificationDAOimpl();
		List<Classification>list=new ArrayList<>();
		list=dao.getAll();


	}
}