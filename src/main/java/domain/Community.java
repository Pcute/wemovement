package domain;

public class Community {
	private int communityId;
	private int typeId;
	private char communityNo;
	private char communityPwd;

	public int getCommunityId() {
		return communityId;
	}

	public void setCommunityId(int communityId) {
		this.communityId = communityId;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public char getCommunityNo() {
		return communityNo;
	}

	public void setCommunityNo(char communityNo) {
		this.communityNo = communityNo;
	}

	public char getCommunityPwd() {
		return communityPwd;
	}

	public void setCommunityPwd(char communityPwd) {
		this.communityPwd = communityPwd;
	}

	public char getCommunityName() {
		return communityName;
	}

	public void setCommunityName(char communityName) {
		this.communityName = communityName;
	}

	public char getCommunityIntro() {
		return communityIntro;
	}

	public void setCommunityIntro(char communityIntro) {
		this.communityIntro = communityIntro;
	}

	public char getCommunityPicture() {
		return communityPicture;
	}

	public void setCommunityPicture(char communityPicture) {
		this.communityPicture = communityPicture;
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

	private char communityName;
	private char communityIntro;
	private char communityPicture;
	private char tele;
	private char email;
}
