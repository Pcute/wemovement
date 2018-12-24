package dao.impl;

import dao.CommunityDAO;
import domain.Community;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class CommunityDAOimplTest {

	@Test
	public void getComClass() {
		CommunityDAO dao=new CommunityDAOimpl();
		List<Community> list=null;
		list=dao.getComClass(1);
		assertEquals(12,list.size());
	}
	@Test
	public void getALL(){
		CommunityDAO dao=new CommunityDAOimpl();
		List<Community> list=null;
		list =dao.getAll();
		assertEquals(46,list.size());

		System.out.println(list.get(0).getCommunityPicture());
	}

  @Test
	public void loginSelect(){
		CommunityDAO dao=new CommunityDAOimpl();
		Community com=new Community();
		com=dao.loginSelect("A01","1234");
		System.out.println(com.getCommunityId());
  }


  @Test
	public void getCommIntro(){
		CommunityDAO dao=new CommunityDAOimpl();
		Community community=new Community();
	  try {
		  community=dao.getCommIntro(1);
		  System.out.println(community.getCommunityName());
		  System.out.println(community.getCommunityAddress());
	  } catch (Exception e) {
		  e.printStackTrace();
	  }
  }
}