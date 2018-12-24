package dao.impl;

import dao.RecordDAO;
import domain.Record;
import org.junit.Test;

import static org.junit.Assert.*;

public class RecordDAOimplTest {

	@Test
	public void getAll() {
		RecordDAO dao=new RecordDAOimpl();
		try {
			dao.getAll(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void insert() {
		RecordDAO dao=new RecordDAOimpl();
		Record record=new Record();
		record.setStuId(1);
		record.setActId(1);
		record.setSignTime("2018-12-25");
		record.setRecordAudit("已通过");
		record.setRecordResult("已参加");
		record.setRecordStatus("良好");
		try {
			dao.insert(record);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}