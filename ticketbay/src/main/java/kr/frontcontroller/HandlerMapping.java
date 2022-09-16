package kr.frontcontroller;

import java.util.HashMap;

import kr.controller.Controller;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;	
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		
		
		
		
		
	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}