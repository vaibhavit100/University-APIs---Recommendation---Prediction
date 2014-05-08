package com.university.bean;

import java.util.List;


public class UniversityInfoListBean {
    private List<UniversityInfoBean> univInfoList;

	public List<UniversityInfoBean> getUnivInfoList() {
		return univInfoList;
	}

	public void setUnivInfoList(List<UniversityInfoBean> univInfoList) {
		this.univInfoList = univInfoList;
	}

	
	public UniversityInfoBean getFirstObject() {
		return univInfoList.get(0);
	}

	
}
