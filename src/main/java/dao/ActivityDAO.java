package dao;

import domain.Activity;

import java.util.Date;
import java.util.List;

public interface ActivityDAO {
	public List<Activity> getNew(int size);
	public List<Activity> getRecommdation(int size);
	public List<Activity> getClass(int id);
}
