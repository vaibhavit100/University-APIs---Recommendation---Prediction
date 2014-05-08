package com.cmpe295.university.model;

import java.util.List;

import com.cmpe295.university.model.FinancialAid;
import com.cmpe295.university.model.FinancialAidList;
import com.cmpe295.university.model.UnivProgram;


public class UnivProgramList {

	public List<UnivProgram> getUnivProgramList() {
		return univProgramList;
	}

	public void setUnivProgramList(List<UnivProgram> univProgramList) {
		this.univProgramList = univProgramList;
	}

	private List<UnivProgram> univProgramList;

	
}
