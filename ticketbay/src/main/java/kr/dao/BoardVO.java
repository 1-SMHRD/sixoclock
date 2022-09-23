package kr.dao;


public class BoardVO {

	private String a1;
	private String b2;
	private String c3;
	
	 public BoardVO() { }

	public BoardVO(String a1, String b2, String c3) {
		super();
		this.a1 = a1;
		this.b2 = b2;
		this.c3 = c3;
	}


	public String getA1() {
		return a1;
	}

	public void setA1(String a1) {
		this.a1 = a1;
	}

	public String getB2() {
		return b2;
	}

	public void setB2(String b2) {
		this.b2 = b2;
	}

	public String getC3() {
		return c3;
	}

	public void setC3(String c3) {
		this.c3 = c3;
	}

	@Override
	public String toString() {
		return "BoardVO [a1=" + a1 + ", b2=" + b2 + ", c3=" + c3 + "]";
	}

	
	 

	
	
	
}

//	    // 상품 코드 
//	    private String pdCode;
//
//	    // 공연 코드 
//	    private String pCode;
//
//	    // 상품 공연일 
//	    private String pShowDate;
//
//	    // 상품 티켓 매수 
//	    private Double pTkCount;
//
//	    // 상품 좌석 정보 
//	    private String pSeatInfo;
//
//	    // 상품 특이사항 
//	    private String pProdCheck;
//
//	    // 상품 사진 
//	    private String pImgRoute;
//
//	    // 상품 거래방식 
//	    private String pDealMethod;
//
//	    // 상품 티켓보유 여부 실물 티켓 : 'Y' / 'N'
//	    private String pTkPossession;
//
//	    // 상품 즉시구매 가격 
//	    private Double pBuyImmed;
//
//	    // 상품 최소입찰 금액 
//	    private Double pMinBid;
//
//	    // 상품 판매자 아이디 
//	    private String pSellerId;
//
//	    // 상품 등록일자 
//	    private Date pDate;
//	    
//	    public BoardVO() { } // 디폴트생성자 -> 무조건 만들어주기!!!
//	    
//	    // TProduct 모델 복사
//	    public BoardVO(String pdCode, String pCode, String pShowDate, Double pTkCount,
//	    		String pSeatInfo, String pProdCheck, String pImgRoute, String pDealMethod,
//	    		String pTkPossession, Double pBuyImmed, Double pMinBid, String pSellerId,
//	    		Date pDate){
//	    	super();
//	        this.pdCode = pdCode;
//	        this.pCode = pCode;
//	        this.pShowDate = pShowDate;
//	        this.pTkCount = pTkCount;
//	        this.pSeatInfo = pSeatInfo;
//	        this.pProdCheck = pProdCheck;
//	        this.pImgRoute = pImgRoute;
//	        this.pDealMethod = pDealMethod;
//	        this.pTkPossession = pTkPossession;
//	        this.pBuyImmed = pBuyImmed;
//	        this.pMinBid = pMinBid;
//	        this.pSellerId = pSellerId;
//	        this.pDate = pDate;
//	    }
//	    
//
//	    public String getPdCode() {
//	        return pdCode;
//	    }
//
//	    public void setPdCode(String pdCode) {
//	        this.pdCode = pdCode;
//	    }
//
//	    public String getPCode() {
//	        return pCode;
//	    }
//
//	    public void setPCode(String pCode) {
//	        this.pCode = pCode;
//	    }
//
//	    public String getPShowDate() {
//	        return pShowDate;
//	    }
//
//	    public void setPShowDate(String pShowDate) {
//	        this.pShowDate = pShowDate;
//	    }
//
//	    public Double getPTkCount() {
//	        return pTkCount;
//	    }
//
//	    public void setPTkCount(Double pTkCount) {
//	        this.pTkCount = pTkCount;
//	    }
//
//	    public String getPSeatInfo() {
//	        return pSeatInfo;
//	    }
//
//	    public void setPSeatInfo(String pSeatInfo) {
//	        this.pSeatInfo = pSeatInfo;
//	    }
//
//	    public String getPProdCheck() {
//	        return pProdCheck;
//	    }
//
//	    public void setPProdCheck(String pProdCheck) {
//	        this.pProdCheck = pProdCheck;
//	    }
//
//	    public String getPImgRoute() {
//	        return pImgRoute;
//	    }
//
//	    public void setPImgRoute(String pImgRoute) {
//	        this.pImgRoute = pImgRoute;
//	    }
//
//	    public String getPDealMethod() {
//	        return pDealMethod;
//	    }
//
//	    public void setPDealMethod(String pDealMethod) {
//	        this.pDealMethod = pDealMethod;
//	    }
//
//	    public String getPTkPossession() {
//	        return pTkPossession;
//	    }
//
//	    public void setPTkPossession(String pTkPossession) {
//	        this.pTkPossession = pTkPossession;
//	    }
//
//	    public Double getPBuyImmed() {
//	        return pBuyImmed;
//	    }
//
//	    public void setPBuyImmed(Double pBuyImmed) {
//	        this.pBuyImmed = pBuyImmed;
//	    }
//
//	    public Double getPMinBid() {
//	        return pMinBid;
//	    }
//
//	    public void setPMinBid(Double pMinBid) {
//	        this.pMinBid = pMinBid;
//	    }
//
//	    public String getPSellerId() {
//	        return pSellerId;
//	    }
//
//	    public void setPSellerId(String pSellerId) {
//	        this.pSellerId = pSellerId;
//	    }
//
//	    public Date getPDate() {
//	        return pDate;
//	    }
//
//	    public void setPDate(Date pDate) {
//	        this.pDate = pDate;
//	    }
//
//	   
//	}



