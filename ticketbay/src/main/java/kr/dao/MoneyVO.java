package kr.dao;

public class MoneyVO {
	private String u_ID;
	private int m_NOW_MONEY;
	private String m_CLASSIFICATION;
	private int m_PLUS;
	private int m_MINUS;
	private String m_DATE;
	
	public MoneyVO() {
		super();
	}

	public MoneyVO(String u_ID, int m_NOW_MONEY, String m_CLASSIFICATION, int m_PLUS, int m_MINUS, String m_DATE) {
		super();
		this.u_ID = u_ID;
		this.m_NOW_MONEY = m_NOW_MONEY;
		this.m_CLASSIFICATION = m_CLASSIFICATION;
		this.m_PLUS = m_PLUS;
		this.m_MINUS = m_MINUS;
		this.m_DATE = m_DATE;
	}

	public String getU_ID() {
		return u_ID;
	}

	public void setU_ID(String u_ID) {
		this.u_ID = u_ID;
	}

	public int getM_NOW_MONEY() {
		return m_NOW_MONEY;
	}

	public void setM_NOW_MONEY(int m_NOW_MONEY) {
		this.m_NOW_MONEY = m_NOW_MONEY;
	}

	public String getM_CLASSIFICATION() {
		return m_CLASSIFICATION;
	}

	public void setM_CLASSIFICATION(String m_CLASSIFICATION) {
		this.m_CLASSIFICATION = m_CLASSIFICATION;
	}

	public int getM_PLUS() {
		return m_PLUS;
	}

	public void setM_PLUS(int m_PLUS) {
		this.m_PLUS = m_PLUS;
	}

	public int getM_MINUS() {
		return m_MINUS;
	}

	public void setM_MINUS(int m_MINUS) {
		this.m_MINUS = m_MINUS;
	}

	public String getM_DATE() {
		return m_DATE;
	}

	public void setM_DATE(String m_DATE) {
		this.m_DATE = m_DATE;
	}

	@Override
	public String toString() {
		return "MoneyVO [u_ID=" + u_ID + ", m_NOW_MONEY=" + m_NOW_MONEY + ", m_CLASSIFICATION=" + m_CLASSIFICATION
				+ ", m_PLUS=" + m_PLUS + ", m_MINUS=" + m_MINUS + ", m_DATE=" + m_DATE + "]";
	}
	
	
}
