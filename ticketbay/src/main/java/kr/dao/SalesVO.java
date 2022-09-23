package kr.dao;

public class SalesVO {

	private String pd_code;
	private String p_code;
	private String p_show_date;
	private int p_tk_count;
	private String p_seat_info;
	private String p_prod_check;
	private String p_img_route;
	private String p_deal_method;
	private char p_tk_possession;
	private int p_buy_immed;
	private int p_min_bid;
	private String p_seller_id;
	private String p_date;
	
	public SalesVO() { }

	public SalesVO(String pd_code, String p_code, String p_show_date, int p_tk_count, String p_seat_info,
			String p_prod_check, String p_img_route, String p_deal_method, char p_tk_possession, int p_buy_immed,
			int p_min_bid, String p_seller_id, String p_date) {
		super();
		this.pd_code = pd_code;
		this.p_code = p_code;
		this.p_show_date = p_show_date;
		this.p_tk_count = p_tk_count;
		this.p_seat_info = p_seat_info;
		this.p_prod_check = p_prod_check;
		this.p_img_route = p_img_route;
		this.p_deal_method = p_deal_method;
		this.p_tk_possession = p_tk_possession;
		this.p_buy_immed = p_buy_immed;
		this.p_min_bid = p_min_bid;
		this.p_seller_id = p_seller_id;
		this.p_date = p_date;
	}

	public String getPd_code() {
		return pd_code;
	}

	public void setPd_code(String pd_code) {
		this.pd_code = pd_code;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_show_date() {
		return p_show_date;
	}

	public void setP_show_date(String p_show_date) {
		this.p_show_date = p_show_date;
	}

	public int getP_tk_count() {
		return p_tk_count;
	}

	public void setP_tk_count(int p_tk_count) {
		this.p_tk_count = p_tk_count;
	}

	public String getP_seat_info() {
		return p_seat_info;
	}

	public void setP_seat_info(String p_seat_info) {
		this.p_seat_info = p_seat_info;
	}

	public String getP_prod_check() {
		return p_prod_check;
	}

	public void setP_prod_check(String p_prod_check) {
		this.p_prod_check = p_prod_check;
	}

	public String getP_img_route() {
		return p_img_route;
	}

	public void setP_img_route(String p_img_route) {
		this.p_img_route = p_img_route;
	}

	public String getP_deal_method() {
		return p_deal_method;
	}

	public void setP_deal_method(String p_deal_method) {
		this.p_deal_method = p_deal_method;
	}

	public char getP_tk_possession() {
		return p_tk_possession;
	}

	public void setP_tk_possession(char p_tk_possession) {
		this.p_tk_possession = p_tk_possession;
	}

	public int getP_buy_immed() {
		return p_buy_immed;
	}

	public void setP_buy_immed(int p_buy_immed) {
		this.p_buy_immed = p_buy_immed;
	}

	public int getP_min_bid() {
		return p_min_bid;
	}

	public void setP_min_bid(int p_min_bid) {
		this.p_min_bid = p_min_bid;
	}

	public String getP_seller_id() {
		return p_seller_id;
	}

	public void setP_seller_id(String p_seller_id) {
		this.p_seller_id = p_seller_id;
	}

	public String getP_date() {
		return p_date;
	}

	public void setP_date(String p_date) {
		this.p_date = p_date;
	}

	@Override
	public String toString() {
		return "SalesVO [pd_code=" + pd_code + ", p_code=" + p_code + ", p_show_date=" + p_show_date + ", p_tk_count="
				+ p_tk_count + ", p_seat_info=" + p_seat_info + ", p_prod_check=" + p_prod_check + ", p_img_route="
				+ p_img_route + ", p_deal_method=" + p_deal_method + ", p_tk_possession=" + p_tk_possession
				+ ", p_buy_immed=" + p_buy_immed + ", p_min_bid=" + p_min_bid + ", p_seller_id=" + p_seller_id
				+ ", p_date=" + p_date + "]";
	}

	
}