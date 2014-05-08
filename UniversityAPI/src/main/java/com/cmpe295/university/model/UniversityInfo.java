package com.cmpe295.university.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "universityinfo")
public class UniversityInfo {

	private @Id  int UNITID;
	private String INSTNM;
	private String ADDR;
	private String CITY;
	private String STABBR;
	private String ZIP;
	private String FIPS;
	private String OBEREG;
	private String CHFNM;
	private String CHFTITLE;
	private String GENTELE;
	private String EIN;
	private String WEBADDR;
	private String ADMINURL;
	private String FAIDURL;
	private String APPLURL;
    private String NPRICURL;
    private String ICLEVEL;
    private String CONTROL;
    private String HLOFFER;
    private String UGOFFER;
    private String GROFFER;
    private String  HDEGOFR1;
    private String DEGGRANT;
    private String HOSPITAL;
    private String MEDICAL;
    private String OPENPUBL;
    private String  ACT;
    private String IALIAS;
    private String INSTCAT;
    private String INSTSIZE;
    private String F1SYSNAM;
    private String FAXTELE;
    private String COUNTYCD;
	private String COUNTYNM;
    private String LONGITUDE;
    private String LATITUDE;

	
	public int getUNITID() {
		return UNITID;
	}
	public void setUNITID(int uNITID) {
		UNITID = uNITID;
	}
	public String getINSTNM() {
		return INSTNM;
	}
	public void setINSTNM(String iNSTNM) {
		INSTNM = iNSTNM;
	}
	public String getADDR() {
		return ADDR;
	}
	public void setADDR(String aDDR) {
		ADDR = aDDR;
	}
	public String getCITY() {
		return CITY;
	}
	public void setCITY(String cITY) {
		CITY = cITY;
	}
	public String getSTABBR() {
		return STABBR;
	}
	public void setSTABBR(String sTABBR) {
		STABBR = sTABBR;
	}
	public String getZIP() {
		return ZIP;
	}
	public void setZIP(String zIP) {
		ZIP = zIP;
	}
	public String getFIPS() {
		return FIPS;
	}
	public void setFIPS(String fIPS) {
		FIPS = fIPS;
	}
	public String getOBEREG() {
		return OBEREG;
	}
	public void setOBEREG(String oBEREG) {
		OBEREG = oBEREG;
	}
	public String getCHFNM() {
		return CHFNM;
	}
	public void setCHFNM(String cHFNM) {
		CHFNM = cHFNM;
	}
	public String getCHFTITLE() {
		return CHFTITLE;
	}
	public void setCHFTITLE(String cHFTITLE) {
		CHFTITLE = cHFTITLE;
	}
	public String getGENTELE() {
		return GENTELE;
	}
	public void setGENTELE(String gENTELE) {
		GENTELE = gENTELE;
	}
	public String getEIN() {
		return EIN;
	}
	public void setEIN(String eIN) {
		EIN = eIN;
	}
	public String getWEBADDR() {
		return WEBADDR;
	}
	public void setWEBADDR(String wEBADDR) {
		WEBADDR = wEBADDR;
	}
	public String getADMINURL() {
		return ADMINURL;
	}
	public void setADMINURL(String aDMINURL) {
		ADMINURL = aDMINURL;
	}
	public String getFAIDURL() {
		return FAIDURL;
	}
	public void setFAIDURL(String fAIDURL) {
		FAIDURL = fAIDURL;
	}
	public String getAPPLURL() {
		return APPLURL;
	}
	public void setAPPLURL(String aPPLURL) {
		APPLURL = aPPLURL;
	}
	public String getNPRICURL() {
		return NPRICURL;
	}
	public void setNPRICURL(String nPRICURL) {
		NPRICURL = nPRICURL;
	}
	public String getICLEVEL() {
		return ICLEVEL;
	}
	public void setICLEVEL(String iCLEVEL) {
		ICLEVEL = iCLEVEL;
	}
	public String getCONTROL() {
		return CONTROL;
	}
	public void setCONTROL(String cONTROL) {
		CONTROL = cONTROL;
	}
	public String getHLOFFER() {
		return HLOFFER;
	}
	public void setHLOFFER(String hLOFFER) {
		HLOFFER = hLOFFER;
	}
	public String getUGOFFER() {
		return UGOFFER;
	}
	public void setUGOFFER(String uGOFFER) {
		UGOFFER = uGOFFER;
	}
	public String getGROFFER() {
		return GROFFER;
	}
	public void setGROFFER(String gROFFER) {
		GROFFER = gROFFER;
	}
	public String getHDEGOFR1() {
		return HDEGOFR1;
	}
	public void setHDEGOFR1(String hDEGOFR1) {
		HDEGOFR1 = hDEGOFR1;
	}
	public String getDEGGRANT() {
		return DEGGRANT;
	}
	public void setDEGGRANT(String dEGGRANT) {
		DEGGRANT = dEGGRANT;
	}
	public String getHOSPITAL() {
		return HOSPITAL;
	}
	public void setHOSPITAL(String hOSPITAL) {
		HOSPITAL = hOSPITAL;
	}
	public String getMEDICAL() {
		return MEDICAL;
	}
	public void setMEDICAL(String mEDICAL) {
		MEDICAL = mEDICAL;
	}
	public String getOPENPUBL() {
		return OPENPUBL;
	}
	public void setOPENPUBL(String oPENPUBL) {
		OPENPUBL = oPENPUBL;
	}
	public String getACT() {
		return ACT;
	}
	public void setACT(String aCT) {
		ACT = aCT;
	}
	public String getIALIAS() {
		return IALIAS;
	}
	public void setIALIAS(String iALIAS) {
		IALIAS = iALIAS;
	}
	public String getINSTCAT() {
		return INSTCAT;
	}
	public void setINSTCAT(String iNSTCAT) {
		INSTCAT = iNSTCAT;
	}
	public String getINSTSIZE() {
		return INSTSIZE;
	}
	public void setINSTSIZE(String iNSTSIZE) {
		INSTSIZE = iNSTSIZE;
	}
	public String getF1SYSNAM() {
		return F1SYSNAM;
	}
	public void setF1SYSNAM(String f1sysnam) {
		F1SYSNAM = f1sysnam;
	}
	public String getFAXTELE() {
		return FAXTELE;
	}
	public void setFAXTELE(String fAXTELE) {
		FAXTELE = fAXTELE;
	}
	public String getCOUNTYCD() {
		return COUNTYCD;
	}
	public void setCOUNTYCD(String cOUNTYCD) {
		COUNTYCD = cOUNTYCD;
	}
	
	public String getCOUNTYNM() {
		return COUNTYNM;
	}
	public void setCOUNTYNM(String cOUNTYNM) {
		COUNTYNM = cOUNTYNM;
	}

	public String getLONGITUDE() {
		return LONGITUDE;
	}
	public void setLONGITUDE(String lONGITUDE) {
		LONGITUDE = lONGITUDE;
	}
	public String getLATITUDE() {
		return LATITUDE;
	}
	public void setLATITUDE(String lATITUDE) {
		LATITUDE = lATITUDE;
	}


	
//	public int getUnITID() {
//		return UnITID;
//	}
//	public void setUnITID(int unITID) {
//		UnITID = unITID;
//	}
	
	




}
