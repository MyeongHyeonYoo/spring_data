package com.springbook.ioc.injection;

import java.util.Properties;

public class CollectionBean {
//	// List 타입 매핑
//	private List<String> addressList;
//	public List<String> getAddressList() {
//		return addressList;
//	}
//	public void setAddressList(List<String> addressList) {
//		this.addressList = addressList;
//	}
	
//	// Set 타입 매핑
//	private Set<String> addressList;
//	public Set<String> getAddressList() {
//		return addressList;
//	}
//	public void setAddressList(Set<String> addressList) {
//		this.addressList = addressList;
//	}
	
//	// Map 타입 매핑
//	private Map<String, String> addressList;
//	public Map<String, String> getAddressList() {
//		return addressList;
//	}
//	public void setAddressList(Map<String, String> addressList) {
//		this.addressList = addressList;
//	}
	
	// Properties 타입 매핑
	private Properties addressList;
	public Properties getAddressList() {
		return addressList;
	}
	public void setAddressList(Properties addressList) {
		this.addressList = addressList;
	}
}