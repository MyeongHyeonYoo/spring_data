package com.springbook.ioc.injection;

import java.util.Properties;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {
	
	public static void main(String[] args) {
		// 1. Spring 컨테이너를 구동한다.
		AbstractApplicationContext factory = new GenericXmlApplicationContext("applicationContext4.xml");

		
		// 2. Spring 컨테이너로부터 필요한 객체를 요청(Lookup)한다.
		
		CollectionBean bean = (CollectionBean) factory.getBean("collectionBean");
		
		Properties addressList = bean.getAddressList();
		
		for( String key : addressList.stringPropertyNames()) {
			System.out.println(String.format("키 : %s, 값 : %s", key, addressList.get(key)));	
		}
		
		// 3. Spring 컨테이너를 종료한다.
		factory.close();
	}
}
