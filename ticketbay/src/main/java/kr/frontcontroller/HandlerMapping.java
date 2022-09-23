package kr.frontcontroller;

import java.util.HashMap;

import kr.controller.Controller;
import kr.controller.SalesDetailController;
import kr.controller.SalesListController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;	
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/salesList.do", new SalesListController());
		mappings.put("/salesDetail.do", new SalesDetailController());
		
		
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}

}