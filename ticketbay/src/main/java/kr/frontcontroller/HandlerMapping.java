package kr.frontcontroller;

import java.util.HashMap;

import kr.controller.CategoryController;
import kr.controller.Controller;
import kr.controller.MainController;
import kr.controller.SalesController;
import kr.controller.SalesDetailController;
import kr.controller.SalesListController;
import kr.controller.SalesWriteController;
import kr.controller.SalesWritepageController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;	
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/salesList.do", new SalesListController());
		mappings.put("/salesDetail.do", new SalesDetailController());
		mappings.put("/category.do", new CategoryController());
		mappings.put("/salesWrite.do", new SalesWriteController());
		mappings.put("/salesWrite_page.do", new SalesWritepageController());
		mappings.put("/sales.do", new SalesController());
		mappings.put("/main.do", new MainController());
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}

}