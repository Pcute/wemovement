package dao;

import domain.Community;

import java.util.List;

public interface CommunityDAO {
	public List<Community> getComClass(int id);
	public List<Community> getAll();
	public int insert(Community community);
}
