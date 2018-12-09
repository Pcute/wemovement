package domain;

import java.util.Date;

public class Record {
	private int recordId;
	private int stuId;
	private int conActId;
	private String recordType;
	private Date signTime;
	private String recordAudit;
	private String recordResult;
	private String recordStatus;

	public int getRecordId() {
		return recordId;
	}

	public void setRecordId(int recordId) {
		this.recordId = recordId;
	}

	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public int getConActId() {
		return conActId;
	}

	public void setConActId(int conActId) {
		this.conActId = conActId;
	}

	public String getRecordType() {
		return recordType;
	}

	public void setRecordType(String recordType) {
		this.recordType = recordType;
	}

	public Date getSignTime() {
		return signTime;
	}

	public void setSignTime(Date signTime) {
		this.signTime = signTime;
	}

	public String getRecordAudit() {
		return recordAudit;
	}

	public void setRecordAudit(String recordAudit) {
		this.recordAudit = recordAudit;
	}

	public String getRecordResult() {
		return recordResult;
	}

	public void setRecordResult(String recordResult) {
		this.recordResult = recordResult;
	}

	public String getRecordStatus() {
		return recordStatus;
	}

	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
}
