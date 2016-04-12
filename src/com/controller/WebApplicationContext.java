package com.controller;

import java.util.HashMap;
import java.util.Map;

import org.xml.sax.helpers.DefaultHandler;

public class WebApplicationContext extends DefaultHandler{
	private Map clazzMap=new HashMap();
	
	public WebApplicationContext(String path){
		try{
			
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
}
