package kr.frontcontroller;

import java.util.HashMap;

import kr.controller.CategoryController;
import kr.controller.CategoryFormController;
import kr.controller.Controller;
import kr.controller.MainController;
import kr.controller.ProductListViewController;
import kr.controller.SalesController;
import kr.controller.SalesDetailController;
import kr.controller.SalesListController;
import kr.controller.SalesWriteController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;	
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/salesList.do", new SalesListController());
		mappings.put("/salesDetail.do", new SalesDetailController());
		mappings.put("/category.do", new CategoryController());
		mappings.put("/salesWrite.do", new SalesWriteController());
		mappings.put("/sales.do", new SalesController());
		mappings.put("/main.do", new MainController());
		mappings.put("/categoryForm.do", new CategoryFormController());
		mappings.put("/salesWrite.do", new SalesWriteController()); // 판매등록 두번째
		mappings.put("/sales.do", new SalesController()); // 판매등록 처음
		mappings.put("/productListView.do", new ProductListViewController()); // 등록후 마이페이지
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}

}