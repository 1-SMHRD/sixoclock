package kr.dao;

public class SalesWriteVO {

	private String p_Idx;
	private String u_ID;
	private String cate_name;
	private String p_indate;
	private int p_tkCount;
	private String p_seatInfo;
	private String p_imgRoute;
	private String p_dealMethod;
	private String p_tkPossession;
	private String p_dealInfo;
	private String p_biddate;
	private int p_buyImmed;
	private int p_minBid;
	private String p_buyerid;
	private String p_registerdate;
	
	public SalesWriteVO() {}

	public SalesWriteVO(String p_Idx, String u_ID, String cate_name, String p_indate, int p_tkCount, String p_seatInfo,
			String p_imgRoute, String p_dealMethod, String p_tkPossession, String p_dealInfo, String p_biddate,
			int p_buyImmed, int p_minBid, String p_buyerid, String p_registerdate) {
		super();
		this.p_Idx = p_Idx;
		this.u_ID = u_ID;
		this.cate_name = cate_name;
		this.p_indate = p_indate;
		this.p_tkCount = p_tkCount;
		this.p_seatInfo = p_seatInfo;
		this.p_imgRoute = p_imgRoute;
		this.p_dealMethod = p_dealMethod;
		this.p_tkPossession = p_tkPossession;
		this.p_dealInfo = p_dealInfo;
		this.p_biddate = p_biddate;
		this.p_buyImmed = p_buyImmed;
		this.p_minBid = p_minBid;
		this.p_buyerid = p_buyerid;
		this.p_registerdate = p_registerdate;
	}

	public String getP_Idx() {
		return p_Idx;
	}

	public void setP_Idx(String p_Idx) {
		this.p_Idx = p_Idx;
	}

	public String getU_ID() {
		return u_ID;
	}

	public void setU_ID(String u_ID) {
		this.u_ID = u_ID;
	}

	public String getCate_name() {
		return cate_name;
	}

	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}

	public String getP_indate() {
		return p_indate;
	}

	public void setP_indate(String p_indate) {
		this.p_indate = p_indate;
	}

	public int getP_tkCount() {
		return p_tkCount;
	}

	public void setP_tkCount(int p_tkCount) {
		this.p_tkCount = p_tkCount;
	}

	public String getP_seatInfo() {
		return p_seatInfo;
	}

	public void setP_seatInfo(String p_seatInfo) {
		this.p_seatInfo = p_seatInfo;
	}

	public String getP_imgRoute() {
		return p_imgRoute;
	}

	public void setP_imgRoute(String p_imgRoute) {
		this.p_imgRoute = p_imgRoute;
	}

	public String getP_dealMethod() {
		return p_dealMethod;
	}

	public void setP_dealMethod(String p_dealMethod) {
		this.p_dealMethod = p_dealMethod;
	}

	public String getP_tkPossession() {
		return p_tkPossession;
	}

	public void setP_tkPossession(String p_tkPossession) {
		this.p_tkPossession = p_tkPossession;
	}

	public String getP_dealInfo() {
		return p_dealInfo;
	}

	public void setP_dealInfo(String p_dealInfo) {
		this.p_dealInfo = p_dealInfo;
	}

	public String getP_biddate() {
		return p_biddate;
	}

	public void setP_biddate(String p_biddate) {
		this.p_biddate = p_biddate;
	}

	public int getP_buyImmed() {
		return p_buyImmed;
	}

	public void setP_buyImmed(int p_buyImmed) {
		this.p_buyImmed = p_buyImmed;
	}

	public int getP_minBid() {
		return p_minBid;
	}

	public void setP_minBid(int p_minBid) {
		this.p_minBid = p_minBid;
	}

	public String getP_buyerid() {
		return p_buyerid;
	}

	public void setP_buyerid(String p_buyerid) {
		this.p_buyerid = p_buyerid;
	}

	public String getP_registerdate() {
		return p_registerdate;
	}

	public void setP_registerdate(String p_registerdate) {
		this.p_registerdate = p_registerdate;
	}

	@Override
	public String toString() {
		return "SalesWriteVO [p_Idx=" + p_Idx + ", u_ID=" + u_ID + ", cate_name=" + cate_name + ", p_indate=" + p_indate
				+ ", p_tkCount=" + p_tkCount + ", p_seatInfo=" + p_seatInfo + ", p_imgRoute=" + p_imgRoute
				+ ", p_dealMethod=" + p_dealMethod + ", p_tkPossession=" + p_tkPossession + ", p_dealInfo=" + p_dealInfo
				+ ", p_biddate=" + p_biddate + ", p_buyImmed=" + p_buyImmed + ", p_minBid=" + p_minBid + ", p_buyerid="
				+ p_buyerid + ", p_registerdate=" + p_registerdate + "]";
	}

	
}