package domain;

public class College {
	private int collegeId;

	public int getCollegeId() {
		return collegeId;
	}

	public void setCollegeId(int collegeId) {
		this.collegeId = collegeId;
	}

	public char getCollegePwd() {
		return collegePwd;
	}

	public void setCollegePwd(char collegePwd) {
		this.collegePwd = collegePwd;
	}

	public char getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(char collegeName) {
		this.collegeName = collegeName;
	}

	public char getCollegeIntro() {
		return collegeIntro;
	}

	public void setCollegeIntro(char collegeIntro) {
		this.collegeIntro = collegeIntro;
	}

	public char getPicture() {
		return picture;
	}

	public void setPicture(char picture) {
		this.picture = picture;
	}

	public char getTele() {
		return tele;
	}

	public void setTele(char tele) {
		this.tele = tele;
	}

	public char getEmail() {
		return email;
	}

	public void setEmail(char email) {
		this.email = email;
	}

	private char collegePwd;
	private char collegeName;
	private char collegeIntro;
	private char picture;
	private char tele;
	private char email;
}
