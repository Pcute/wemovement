package dao;

import domain.Community;

import java.util.List;

public interface CommunityDAO {
	public List<Community> getComClass(int id);//社团分类id获取全部社团
	public List<Community> getAll();//获取全部社团
	public  Community getCommIntro(int id) throws Exception;//通过社团id获取社团详情
	public Community getCommIntroByActId(int id) throws Exception;//通过活动ID获取社团信息
	//老王
	public int insert(Community community);
	public Community loginSelect(String user_no,String user_pwd);
}
