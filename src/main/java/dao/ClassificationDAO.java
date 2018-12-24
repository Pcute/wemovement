package dao;

import domain.Classification;

import java.util.List;

public interface ClassificationDAO {
	public List<Classification> getAll() throws Exception;
	public Classification get(int id);
}
