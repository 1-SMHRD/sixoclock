package kr.dao;

public class CategoryVO {

	private String cate_no;
	private String cate_name;
	private String up_cate_no;
	private int cate_seq;
	
	public CategoryVO() {}

	public CategoryVO(String cate_no, String cate_name, String up_cate_no, int cate_seq) {
		super();
		this.cate_no = cate_no;
		this.cate_name = cate_name;
		this.up_cate_no = up_cate_no;
		this.cate_seq = cate_seq;
	}

	public String getCate_no() {
		return cate_no;
	}

	public void setCate_no(String cate_no) {
		this.cate_no = cate_no;
	}

	public String getCate_name() {
		return cate_name;
	}

	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}

	public String getUp_cate_no() {
		return up_cate_no;
	}

	public void setUp_cate_no(String up_cate_no) {
		this.up_cate_no = up_cate_no;
	}

	public int getCate_seq() {
		return cate_seq;
	}

	public void setCate_seq(int cate_seq) {
		this.cate_seq = cate_seq;
	}

	@Override
	public String toString() {
		return "CategoryVO [cate_no=" + cate_no + ", cate_name=" + cate_name + ", up_cate_no=" + up_cate_no
				+ ", cate_seq=" + cate_seq + "]";
	}
	
	
}