package kr.dao;

public class BoardVO {
	
	private String info1817;
	private String count1817;
	
	
	public  BoardVO() {}


	public BoardVO(String info1817, String count1817) {
		super();
		this.info1817 = info1817;
		this.count1817 = count1817;
	}


	public String getInfo1817() {
		return info1817;
	}


	public void setInfo1817(String info1817) {
		this.info1817 = info1817;
	}


	public String getCount1817() {
		return count1817;
	}


	public void setCount1817(String count1817) {
		this.count1817 = count1817;
	}


	@Override
	public String toString() {
		return "BoardVO [info1817=" + info1817 + ", count1817=" + count1817 + "]";
	}
	
	
	
}
