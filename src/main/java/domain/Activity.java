package domain;

import java.util.Date;

public class Activity {
	private int activityId;
	private int claId;
	private String activityName;
	private int iniId;
	private String iniType;
	private String iniName;
	private String activityIntro;
	private String activityPicture;
	private Date signTime;
	private Date activityTime;

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

	public Date getSignTime() {
		return signTime;
	}

	public void setSignTime(Date signTime) {
		this.signTime = signTime;
	}

	public Date getDateTime() {
		return activityTime;
	}

	public void setDateTime(Date dateTime) {
		this.activityTime = dateTime;
	}
}
