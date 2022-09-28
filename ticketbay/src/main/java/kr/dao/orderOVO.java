package kr.dao;

import java.sql.Date;

public class orderOVO {

	private String p_code;
	private String pd_code;

	private String m_now_money;
	private int p_buy_immed;
	private String p_seat_info;
	private String p_title;
	private String p_show_date;
	private int p_tk_count;

	public orderOVO() {
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

	public String getM_now_money() {
		return m_now_money;
	}

	public void setM_now_money(String m_now_money) {
		this.m_now_money = m_now_money;
	}

	public int getP_buy_immed() {
		return p_buy_immed;
	}

	public void setP_buy_immed(int p_buy_immed) {
		this.p_buy_immed = p_buy_immed;
	}

	public String getP_seat_info() {
		return p_seat_info;
	}

	public void setP_seat_info(String p_seat_info) {
		this.p_seat_info = p_seat_info;
	}

	public String getP_title() {
		return p_title;
	}

	public void setP_title(String p_title) {
		this.p_title = p_title;
	}

	public String getP_show_date() {
		return p_show_date;
	}

	public void setP_show_date(String p_show_date2) {
		this.p_show_date = p_show_date2;
	}

	public int getP_tk_count() {
		return p_tk_count;
	}

	public void setP_tk_count(int p_tk_count) {
		this.p_tk_count = p_tk_count;
	}

	@Override
	public String toString() {
		return "orderOVO [p_code=" + p_code + ", pd_code=" + pd_code + ", m_now_money=" + m_now_money + ", p_buy_immed="
				+ p_buy_immed + ", p_seat_info=" + p_seat_info + ", p_title=" + p_title + ", p_show_date=" + p_show_date
				+ ", p_tk_count=" + p_tk_count + "]";
	}

	public orderOVO(String p_code, String pd_code, String m_now_money, int p_buy_immed, String p_seat_info, String p_title,
			String p_show_date, int p_tk_count) {
		super();
		this.p_code = p_code;
		this.pd_code = pd_code;
		this.m_now_money = m_now_money;
		this.p_buy_immed = p_buy_immed;
		this.p_seat_info = p_seat_info;
		this.p_title = p_title;
		this.p_show_date = p_show_date;
		this.p_tk_count = p_tk_count;
	}

}
