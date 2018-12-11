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
}