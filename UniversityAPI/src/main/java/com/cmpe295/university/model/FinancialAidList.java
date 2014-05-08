package com.cmpe295.university.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;


public class FinancialAidList {
	
	public List<FinancialAid> getFinancialAidList() {
		return financialAidList;
	}

	public void setFinancialAidList(List<FinancialAid> financialAidList) {
		this.financialAidList = financialAidList;
	}

	private List<FinancialAid> financialAidList;


}
