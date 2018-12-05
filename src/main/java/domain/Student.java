package domain;

public class Student {
	private int stuId;
	private int classId;
	private char stuNo;

	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public int getClassId() {
		return classId;
	}

	public void setClassId(int classId) {
		this.classId = classId;
	}

	public char getStuNo() {
		return stuNo;
	}

	public void setStuNo(char stuNo) {
		this.stuNo = stuNo;
	}

	public char getStuPwd() {
		return stuPwd;
	}

	public void setStuPwd(char stuPwd) {
		this.stuPwd = stuPwd;
	}

	public char getStuName() {
		return stuName;
	}

	public void setStuName(char stuName) {
		this.stuName = stuName;
	}

	public char getStuSex() {
		return stuSex;
	}

	public void setStuSex(char stuSex) {
		this.stuSex = stuSex;
	}

	public char getHobby() {
		return hobby;
	}

	public void setHobby(char hobby) {
		this.hobby = hobby;
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

	private char stuPwd;
	private char stuName;
	private char stuSex;
	private char hobby;
	private char picture;
	private char tele;
}
