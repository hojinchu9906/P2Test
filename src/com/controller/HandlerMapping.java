package com.controller;

import java.util.HashMap;
import java.util.Map;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class HandlerMapping extends DefaultHandler {
	Map map=new HashMap();

	@Override
	public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
		try{
			if(qName.equals("bean")){
				String id=attributes.getValue("id");
				String clazz=attributes.getValue("class");
				
				Class clazzName=Class.forName(clazz);
				Object object=clazzName.newInstance();
				
				map.put(id, object);
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	
	
}
