package dao.impl;

import dao.ActivityDAO;
import domain.Activity;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class ActivityDAOimplTest {

	@Test
	public void getNew() {
		ActivityDAOimpl dao=new ActivityDAOimpl();
		List<Activity> act=null;
		act=dao.getNew(5);
		assertEquals(5,act.size());

	}

	@Test
	public void getRecommdation() {
		ActivityDAO dao=new ActivityDAOimpl();
		List<Activity>act=null;
		act=dao.getRecommdation(5);
		assertNotNull(act);
	}
	@Test
	public void getActIntro(){
		ActivityDAO dao=new ActivityDAOimpl();
		Activity act =new Activity();
		try {
			act=dao.getActIntro(1);
		} catch (Exception e) {

		}
		System.out.println(act.getActivityName());
	}
	//@Test
	/*public void getClass(){
		ActivityDAO dao=new ActivityDAOimpl();
		List<Activity> act=null;
		act=dao.getClass(3);
		assertNotNull(act);
	}*/
}