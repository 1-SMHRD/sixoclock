package kr.frontcontroller;

import java.util.HashMap;

import kr.controller.Controller;
import kr.controller.MainController;
import kr.controller.ProductListViewController;
import kr.controller.SalesDetailController;
import kr.controller.SalesListController;
import kr.controller.SalesWriteController;
import kr.controller.SalesWriteFormController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;	
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
		mappings.put("/salesList.do", new SalesListController());
		mappings.put("/salesDetail.do", new SalesDetailController());
		mappings.put("/salesWrite.do", new SalesWriteController()); // 판매등록
		mappings.put("/salesWriteForm.do", new SalesWriteFormController());
		mappings.put("/productListView.do", new ProductListViewController()); // 등록후 마이페이지
		
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}

}