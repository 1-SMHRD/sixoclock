package kr.frontcontroller;

import java.util.HashMap;

import kr.controller.BoardWriteController;
import kr.controller.CategoryController;
import kr.controller.Controller;
import kr.controller.SalesDetailController;
import kr.controller.SalesListController;
import kr.controller.sales_1Controller;
import kr.controller.RequestVerifyAuthController;
import kr.controller.orderController;
import kr.controller.orderPayController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;	
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/salesList.do", new SalesListController());
		mappings.put("/salesDetail.do", new SalesDetailController());
		mappings.put("/category.do", new CategoryController());
		mappings.put("/boardWrite.do", new BoardWriteController());
		mappings.put("/sales_1.do", new sales_1Controller());
		 mappings.put("/orderSheet.do",new orderController());
		   mappings.put("/orderPay.do",new orderPayController());
		   mappings.put("/RequestVerifyAuth.do",new RequestVerifyAuthController());
		
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}

}