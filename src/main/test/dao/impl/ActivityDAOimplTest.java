package dao.impl;

import dao.ActivityDAO;
import domain.Activity;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Date;
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


	@Test
	public void  insertNewAct (){
		ActivityDAO dao=new ActivityDAOimpl();
		Activity act=new Activity();
		String actClass="创新实践";
		String actName="actName";
		int iniID=1;
		String iniType="社团";
		String iniName="吉他社";
		String actTopic="actTopic";
		String actIntro="actIntro";

		String newFileName="dfsdf/fd.jpg" ;

		int peopleNum=12;
		int peoNum=0;
		String actAdress="actAdress";
	//	Date actSignTime=new Date("2018-12-02");
	//	Date actActTime=new Date("2018-12-02");
		String actSignTime="2018-12-2";
		String actActTime="2018-12-5";
		String actState="进行中";
		String actAudit="未审核";
		act.setClaId(1);
       act.setActivityName(actName);
		act.setIniId(iniID);
		act.setIniType(iniType);
		act.setIniName(iniName);
		act.setActivityTopic(actTopic);
		act.setActivityIntro(actIntro);
		act.setActivityPicture(newFileName);
		act.setPeopleNum(peopleNum);
		act.setPeoNum(peoNum);
		act.setAddress(actAdress);
	//	act.setSignTime(actSignTime);
	//	act.setActivityTime(actActTime);
		act.setActivityState(actState);
		act.setActivityAudit(actAudit);

		try {
			dao.insertNewAct(act);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	@Test
	public void getNewAct( ){
		ActivityDAO dao=new ActivityDAOimpl();
		List<Activity> list= new ArrayList<>();
		try {
			list=dao.getNewAct(1);
			System.out.println(list.get(3).getActivityName());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	@Test
	public void getAll(){
		ActivityDAO dao=new ActivityDAOimpl();
		List<Activity> list=new ArrayList<>();
		list=dao.getAll();
		System.out.println(list.get(2).getActivityName());
		//assertEquals(44,list.size());
	}

	@Test
	public void updateSignNum(){
		ActivityDAO dao=new ActivityDAOimpl();
		try {
			dao.updateSignNum(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}