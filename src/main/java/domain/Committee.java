package domain;

public class Committee {
	private int committeeId;
	private String committeeName;
	private String committeePwd;
	private String picture;
	private int tele;
	private String email;

	public int getCommitteeId() {
		return committeeId;
	}

	public void setCommitteeId(int committeeId) {
		this.committeeId = committeeId;
	}

	public String getCommitteeName() {
		return committeeName;
	}

	public void setCommitteeName(String committeeName) {
		this.committeeName = committeeName;
	}

	public String getCommitteePwd() {
		return committeePwd;
	}

	public void setCommitteePwd(String committeePwd) {
		this.committeePwd = committeePwd;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public int getTele() {
		return tele;
	}

	public void setTele(int tele) {
		this.tele = tele;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
