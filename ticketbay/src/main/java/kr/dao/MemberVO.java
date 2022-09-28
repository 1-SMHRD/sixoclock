package kr.dao;

public class MemberVO {
	private String u_ID;
	private String u_PW;
	private String u_NAME;
	private String u_EMAIL;
	private String u_MOBILE;
	private String u_CLAUSE;
	private int u_MONEY;
	private String u_JOINDATE;
	private String u_ROLE;
    
    public MemberVO() {
    }

    public MemberVO(String u_ID, String u_PW, String u_NAME, String u_EMAIL, String u_MOBILE, String u_CLAUSE,
            int u_MONEY, String u_JOINDATE, String u_ROLE) {
        this.u_ID = u_ID;
        this.u_PW = u_PW;
        this.u_NAME = u_NAME;
        this.u_EMAIL = u_EMAIL;
        this.u_MOBILE = u_MOBILE;
        this.u_CLAUSE = u_CLAUSE;
        this.u_MONEY = u_MONEY;
        this.u_JOINDATE = u_JOINDATE;
        this.u_ROLE = u_ROLE;
    }

    public String getU_ID() {
        return u_ID;
    }

    public void setU_ID(String u_ID) {
        this.u_ID = u_ID;
    }

    public String getU_PW() {
        return u_PW;
    }

    public void setU_PW(String u_PW) {
        this.u_PW = u_PW;
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

    public String getU_CLAUSE() {
        return u_CLAUSE;
    }

    public void setU_CLAUSE(String u_CLAUSE) {
        this.u_CLAUSE = u_CLAUSE;
    }

    public int getU_MONEY() {
        return u_MONEY;
    }

    public void setU_MONEY(int u_MONEY) {
        this.u_MONEY = u_MONEY;
    }

    public String getU_JOINDATE() {
        return u_JOINDATE;
    }

    public void setU_JOINDATE(String u_JOINDATE) {
        this.u_JOINDATE = u_JOINDATE;
    }

    public String getU_ROLE() {
        return u_ROLE;
    }

    public void setU_ROLE(String u_ROLE) {
        this.u_ROLE = u_ROLE;
    }

    @Override
    public String toString() {
        return "MemberVO [u_CLAUSE=" + u_CLAUSE + ", u_EMAIL=" + u_EMAIL + ", u_ID=" + u_ID + ", u_JOINDATE="
                + u_JOINDATE + ", u_MONEY=" + u_MONEY + ", u_NAME=" + u_NAME + ", u_MOBILE=" + u_MOBILE + ", u_PW=" + u_PW
                + ", u_ROLE=" + u_ROLE + "]";
    }

    
}


