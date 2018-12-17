package dao;

import domain.Activity;

import java.util.Date;
import java.util.List;

public interface ActivityDAO {
	public List<Activity> getNew(int size);
	public List<Activity> getRecommdation(int size);
	public List<Activity> getClass(int id);
	public  Activity getActIntro(int id) throws Exception;
	public void insertNewAct(Activity act) throws Exception;
	public void updateAct(Activity act) throws Exception;
}
