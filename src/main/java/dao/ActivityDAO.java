package dao;

import domain.Activity;

import java.sql.Connection;
import java.util.Date;
import java.util.List;

public interface ActivityDAO {
	public List<Activity> getNew(int size);//首页最新活动
	public List<Activity> getRecommdation(int size);//首页推荐活动
	public List<Activity> getClass(int id);//通过分类id活动分类
	public List<Activity> getAll();//获取全部活动
	public  Activity getActIntro(int id) throws Exception;//通过活动id获取活动详情
	public void insertNewAct(Activity act) throws Exception;//发布新的活动
	public void updateAct(Activity act) throws Exception;//修改更新活动
	public List<Activity> getNewAct(int comId) throws Exception;//通过社团id获取正在举办的活动详细信息
	public List<Activity> getOldAct(int comId) throws Exception;//通过社团id获取已经举办的活动详情信息

	public void updateSignNum(int actId, Connection conn) throws Exception;//学生报名之后修改报名人数信息,公用一个connection链接
}
