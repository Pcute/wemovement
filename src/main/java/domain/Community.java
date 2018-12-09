package domain;

public class Community {
	private int communityId;
	private int typeId;
	private String communityNo;
	private String communityPwd;
	private String communityName;
	private String communityIntro;
	private String communityPicture;
	private String tele;
	private String email;

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

	public String getCommunityNo() {
		return communityNo;
	}

	public void setCommunityNo(String communityNo) {
		this.communityNo = communityNo;
	}

	public String getCommunityPwd() {
		return communityPwd;
	}

	public void setCommunityPwd(String communityPwd) {
		this.communityPwd = communityPwd;
	}

	public String getCommunityName() {
		return communityName;
	}

	public void setCommunityName(String communityName) {
		this.communityName = communityName;
	}

	public String getCommunityIntro() {
		return communityIntro;
	}

	public void setCommunityIntro(String communityIntro) {
		this.communityIntro = communityIntro;
	}

	public String getCommunityPicture() {
		return communityPicture;
	}

	public void setCommunityPicture(String communityPicture) {
		this.communityPicture = communityPicture;
	}

	public String getTele() {
		return tele;
	}

	public void setTele(String tele) {
		this.tele = tele;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
