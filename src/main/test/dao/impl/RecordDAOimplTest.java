package dao.impl;

import dao.RecordDAO;
import domain.Record;
import jdbc.util.JDBCUtil;
import org.junit.Test;

import java.sql.Connection;

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
		record.setRecordType("活动");
		record.setSignTime("2018-12-25");
		record.setRecordAudit("已通过");
		record.setRecordResult("已参加");
		record.setRecordStatus("hahahhaa");
		try {
			Connection conn= JDBCUtil.getconn();
			dao.insert(record,conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}