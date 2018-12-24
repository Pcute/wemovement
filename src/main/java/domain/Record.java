package domain;

import java.util.Date;

public class Record {
	private int recordId;
	private int stuId;
	private int actId;
	private String signTime;
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

	public int getActId() {
		return actId;
	}

	public void setActId(int actId) {
		this.actId = actId;
	}

	public String getSignTime() {
		return signTime;
	}

	public void setSignTime(String signTime) {
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
