package com.cmpe295.university.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "financialaid")
public class FinancialAid {


	private int UNITID;
	private String SCUGRAD;
	private String SCUGFFN;
	private String SCUGFFP;
	private String SCFA2;
	private String SCFA1N;
	private String SCFA12N;
	private String SCFA12P;
	private String SCFA13N;
	private String SCFA13P;
	private String SCFY2;
	private String SCFY1N;
	private String UAGRNTN;
	private String UAGRNTP;
	private String UAGRNTT;
	private String UAGRNTA;
	private String GISTN2;
	private String GISTON2;
	private String GISTWF2;
	private String GISTOF2;
	private String GISTUN2;
	private String GISTT2;
	private String GISTA2;
	@Id @GeneratedValue int FINANCIALID; 


	public int getUNITID() {
		return UNITID;
	}
	public void setUNITID(int uNITID) {
		UNITID = uNITID;
	}
	public String getSCUGRAD() {
		return SCUGRAD;
	}
	public void setSCUGRAD(String sCUGRAD) {
		SCUGRAD = sCUGRAD;
	}
	public String getSCUGFFN() {
		return SCUGFFN;
	}
	public void setSCUGFFN(String sCUGFFN) {
		SCUGFFN = sCUGFFN;
	}
	public String getSCUGFFP() {
		return SCUGFFP;
	}
	public void setSCUGFFP(String sCUGFFP) {
		SCUGFFP = sCUGFFP;
	}
	public String getSCFA2() {
		return SCFA2;
	}
	public void setSCFA2(String sCFA2) {
		SCFA2 = sCFA2;
	}
	public String getSCFA1N() {
		return SCFA1N;
	}
	public void setSCFA1N(String sCFA1N) {
		SCFA1N = sCFA1N;
	}
	public String getSCFA12N() {
		return SCFA12N;
	}
	public void setSCFA12N(String sCFA12N) {
		SCFA12N = sCFA12N;
	}
	public String getSCFA12P() {
		return SCFA12P;
	}
	public void setSCFA12P(String sCFA12P) {
		SCFA12P = sCFA12P;
	}
	public String getSCFA13N() {
		return SCFA13N;
	}
	public void setSCFA13N(String sCFA13N) {
		SCFA13N = sCFA13N;
	}
	public String getSCFA13P() {
		return SCFA13P;
	}
	public void setSCFA13P(String sCFA13P) {
		SCFA13P = sCFA13P;
	}
	public String getSCFY2() {
		return SCFY2;
	}
	public void setSCFY2(String sCFY2) {
		SCFY2 = sCFY2;
	}
	public String getSCFY1N() {
		return SCFY1N;
	}
	public void setSCFY1N(String sCFY1N) {
		SCFY1N = sCFY1N;
	}

	public String getUAGRNTN() {
		return UAGRNTN;
	}
	public void setUAGRNTN(String uAGRNTN) {
		UAGRNTN = uAGRNTN;
	}
	public String getUAGRNTP() {
		return UAGRNTP;
	}
	public void setUAGRNTP(String uAGRNTP) {
		UAGRNTP = uAGRNTP;
	}
	public String getUAGRNTT() {
		return UAGRNTT;
	}
	public void setUAGRNTT(String uAGRNTT) {
		UAGRNTT = uAGRNTT;
	}
	public String getUAGRNTA() {
		return UAGRNTA;
	}
	public void setUAGRNTA(String uAGRNTA) {
		UAGRNTA = uAGRNTA;
	}
	public String getGISTN2() {
		return GISTN2;
	}
	public void setGISTN2(String gISTN2) {
		GISTN2 = gISTN2;
	}
	public String getGISTON2() {
		return GISTON2;
	}
	public void setGISTON2(String gISTON2) {
		GISTON2 = gISTON2;
	}
	public String getGISTWF2() {
		return GISTWF2;
	}
	public void setGISTWF2(String gISTWF2) {
		GISTWF2 = gISTWF2;
	}
	public String getGISTOF2() {
		return GISTOF2;
	}
	public void setGISTOF2(String gISTOF2) {
		GISTOF2 = gISTOF2;
	}
	public String getGISTUN2() {
		return GISTUN2;
	}
	public void setGISTUN2(String gISTUN2) {
		GISTUN2 = gISTUN2;
	}
	public String getGISTT2() {
		return GISTT2;
	}
	public void setGISTT2(String gISTT2) {
		GISTT2 = gISTT2;
	}
	public String getGISTA2() {
		return GISTA2;
	}
	public void setGISTA2(String gISTA2) {
		GISTA2 = gISTA2;
	}

	
}
