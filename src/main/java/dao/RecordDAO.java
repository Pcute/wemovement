package dao;

import domain.Record;

import java.sql.Connection;
import java.util.List;

public interface RecordDAO {
	public List<Record> getAll(int stuId)throws Exception;
	public Record insert(Record record, Connection conn) throws Exception;
}
