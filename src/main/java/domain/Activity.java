package domain;

import java.util.Date;

public class Activity {
	private int activityId;
	private int claId;
	private String activityName;
	private int iniId;
	private String iniType;
	private String iniName;
	private  String activityTopic;
	private String activityIntro;
	private String activityPicture;
	private  int peopleNum;
	private int peoNum;
	private  String address;
	private String signTime;
	private String activityTime;
	private String activityState;
	private String activityAudit;

	public String getActivityTime() {
		return activityTime;
	}

	public void setActivityTime(String activityTime) {
		this.activityTime = activityTime;
	}

	public int getActivityId() {
		return activityId;
	}

	public void setActivityId(int activityId) {
		this.activityId = activityId;
	}

	public int getClaId() {
		return claId;
	}

	public void setClaId(int claId) {
		this.claId = claId;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public int getIniId() {
		return iniId;
	}

	public void setIniId(int iniId) {
		this.iniId = iniId;
	}

	public String getIniType() {
		return iniType;
	}

	public void setIniType(String iniType) {
		this.iniType = iniType;
	}

	public String getIniName() {
		return iniName;
	}

	public void setIniName(String iniName) {
		this.iniName = iniName;
	}

	public String getActivityTopic() {
		return activityTopic;
	}

	public void setActivityTopic(String activityTopic) {
		this.activityTopic = activityTopic;
	}

	public String getActivityIntro() {
		return activityIntro;
	}

	public void setActivityIntro(String activityIntro) {
		this.activityIntro = activityIntro;
	}

	public String getActivityPicture() {
		return activityPicture;
	}

	public void setActivityPicture(String activityPicture) {
		this.activityPicture = activityPicture;
	}

	public int getPeopleNum() {
		return peopleNum;
	}

	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}

	public int getPeoNum() {
		return peoNum;
	}

	public void setPeoNum(int peoNum) {
		this.peoNum = peoNum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSignTime() {
		return signTime;
	}

	public void setSignTime(String signTime) {
		this.signTime = signTime;
	}

	public String getActivityState() {
		return activityState;
	}

	public void setActivityState(String activityState) {
		this.activityState = activityState;
	}

	public String getActivityAudit() {
		return activityAudit;
	}

	public void setActivityAudit(String activityAudit) {
		this.activityAudit = activityAudit;
	}
}
