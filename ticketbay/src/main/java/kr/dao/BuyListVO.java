package kr.dao;

public class BuyListVO {
	private int p_idx;
	private String b_sellerid;
	private String b_buyerid;
	private int b_buymoney;
	private String b_buydate;
	private String b_check;
	
	public BuyListVO() {
		super();
	}

	public BuyListVO(int p_idx, String b_sellerid, String b_buyerid, int b_buymoney, String b_buydate, String b_check) {
		super();
		this.p_idx = p_idx;
		this.b_sellerid = b_sellerid;
		this.b_buyerid = b_buyerid;
		this.b_buymoney = b_buymoney;
		this.b_buydate = b_buydate;
		this.b_check = b_check;
	}

	public int getP_idx() {
		return p_idx;
	}

	public void setP_idx(int p_idx) {
		this.p_idx = p_idx;
	}

	public String getB_sellerid() {
		return b_sellerid;
	}

	public void setB_sellerid(String b_sellerid) {
		this.b_sellerid = b_sellerid;
	}

	public String getB_buyerid() {
		return b_buyerid;
	}

	public void setB_buyerid(String b_buyerid) {
		this.b_buyerid = b_buyerid;
	}

	public int getB_buymoney() {
		return b_buymoney;
	}

	public void setB_buymoney(int b_buymoney) {
		this.b_buymoney = b_buymoney;
	}

	public String getB_buydate() {
		return b_buydate;
	}

	public void setB_buydate(String b_buydate) {
		this.b_buydate = b_buydate;
	}

	public String getB_check() {
		return b_check;
	}

	public void setB_check(String b_check) {
		this.b_check = b_check;
	}

	@Override
	public String toString() {
		return "BuyListVO [p_idx=" + p_idx + ", b_sellerid=" + b_sellerid + ", b_buyerid=" + b_buyerid + ", b_buymoney="
				+ b_buymoney + ", b_buydate=" + b_buydate + ", b_check=" + b_check + "]";
	}
	
	
}
