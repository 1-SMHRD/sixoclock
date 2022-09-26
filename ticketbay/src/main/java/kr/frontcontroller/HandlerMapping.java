package kr.frontcontroller;

import java.util.HashMap;

import kr.controller.CategoryController;
import kr.controller.Controller;
import kr.controller.MainController;
import kr.controller.SalesController;
import kr.controller.SalesDetailController;
import kr.controller.SalesListController;
import kr.controller.SalesWriteController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;	
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
		mappings.put("/salesList.do", new SalesListController());
		mappings.put("/salesDetail.do", new SalesDetailController());
		mappings.put("/category.do", new CategoryController());
		mappings.put("/salesWrite.do", new SalesWriteController());
		mappings.put("/sales.do", new SalesController());
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}

}