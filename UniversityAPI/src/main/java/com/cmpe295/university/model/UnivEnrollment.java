package com.cmpe295.university.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "univenrollment")
public class UnivEnrollment {
	@Id @GeneratedValue int ENROLLID;
    private String EFCIPLEV;
	public String getEFCIPLEV() {
		return EFCIPLEV;
	}

	public void setEFCIPLEV(String eFCIPLEV) {
		EFCIPLEV = eFCIPLEV;
	}

	public String getCIPCODE() {
		return CIPCODE;
	}

	public void setCIPCODE(String cIPCODE) {
		CIPCODE = cIPCODE;
	}

	private String CIPCODE;

    
    private int UNITID;
    
//   @Column(name = "CIPCODE")
   
   public int getUNITID() {
		return UNITID;
	}

	public void setUNITID(int uNITID) {
		UNITID = uNITID;
	}

	

}
