package kr.dao;

public class payVO {

	private String u_NAME;
	private String u_EMAIL;
	private String u_MOBILE;
	private int p_buy_immed;
	private String p_code;

	public payVO() {
	}

	public String getU_NAME() {
		return u_NAME;
	}

	public void setU_NAME(String u_NAME) {
		this.u_NAME = u_NAME;
	}

	public String getU_EMAIL() {
		return u_EMAIL;
	}

	public void setU_EMAIL(String u_EMAIL) {
		this.u_EMAIL = u_EMAIL;
	}

	public String getU_MOBILE() {
		return u_MOBILE;
	}

	public void setU_MOBILE(String u_MOBILE) {
		this.u_MOBILE = u_MOBILE;
	}

	public int getP_buy_immed() {
		return p_buy_immed;
	}

	public void setP_buy_immed(int p_buy_immed) {
		this.p_buy_immed = p_buy_immed;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	@Override
	public String toString() {
		return "payVO [u_NAME=" + u_NAME + ", u_EMAIL=" + u_EMAIL + ", u_MOBILE=" + u_MOBILE + ", p_buy_immed="
				+ p_buy_immed + ", p_code=" + p_code + "]";
	}

	public payVO(String u_NAME, String u_EMAIL, String u_MOBILE, int p_buy_immed, String p_code) {
		super();
		this.u_NAME = u_NAME;
		this.u_EMAIL = u_EMAIL;
		this.u_MOBILE = u_MOBILE;
		this.p_buy_immed = p_buy_immed;
		this.p_code = p_code;
	}

}
