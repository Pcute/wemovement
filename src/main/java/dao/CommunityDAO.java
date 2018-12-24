package dao;

import domain.Community;

import java.util.List;

public interface CommunityDAO {
	public List<Community> getComClass(int id);
	public List<Community> getAll();
	public  Community getCommIntro(int id) throws Exception;
	//老王
	public int insert(Community community);
	public Community loginSelect(String user_no,String user_pwd);
}
