package kr.dao;

public class DeliveryVO {
	private String u_id;
	private String d_default;
	private String d_name;
	private String d_post_code;
	private String d_addr;
	private String d_recipient;
	private String d_mobile;
	
	public DeliveryVO() {
		super();
	}

	public DeliveryVO(String u_id, String d_default, String d_name, String d_post_code, String d_addr,
			String d_recipient, String d_mobile) {
		super();
		this.u_id = u_id;
		this.d_default = d_default;
		this.d_name = d_name;
		this.d_post_code = d_post_code;
		this.d_addr = d_addr;
		this.d_recipient = d_recipient;
		this.d_mobile = d_mobile;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getD_default() {
		return d_default;
	}

	public void setD_default(String d_default) {
		this.d_default = d_default;
	}

	public String getD_name() {
		return d_name;
	}

	public void setD_name(String d_name) {
		this.d_name = d_name;
	}

	public String getD_post_code() {
		return d_post_code;
	}

	public void setD_post_code(String d_post_code) {
		this.d_post_code = d_post_code;
	}

	public String getD_addr() {
		return d_addr;
	}

	public void setD_addr(String d_addr) {
		this.d_addr = d_addr;
	}

	public String getD_recipient() {
		return d_recipient;
	}

	public void setD_recipient(String d_recipient) {
		this.d_recipient = d_recipient;
	}

	public String getD_mobile() {
		return d_mobile;
	}

	public void setD_mobile(String d_mobile) {
		this.d_mobile = d_mobile;
	}

	@Override
	public String toString() {
		return "DeliveryVO [u_id=" + u_id + ", d_default=" + d_default + ", d_name=" + d_name + ", d_post_code="
				+ d_post_code + ", d_addr=" + d_addr + ", d_recipient=" + d_recipient + ", d_mobile=" + d_mobile
				+ "]";
	}
	
}
