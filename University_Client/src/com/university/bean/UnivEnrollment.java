package com.university.bean;


public class UnivEnrollment {

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
