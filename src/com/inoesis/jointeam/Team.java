package com.inoesis.jointeam;

import javax.servlet.http.Part;

public class Team {
	private String txtname;
	private String txtfname;
	private String txtdate;
	private String mob;
	private String aadhaar;
	private String pan;
	private String bankname;
	private String account;
	private String ifsc;
	private String pmtadr;
	private String preadr;
	private String txtQexam;
	private String income;
	private String dependent;
	private String other;
	private String referal;
	private Part photo;
	
	public Team(String txtname, String txtfname, String txtdate, String mob, String aadhaar, String pan,
			String bankname, String account, String ifsc, String pmtadr, String preadr, String txtQexam, String income,
			String dependent, String other, String referal, Part photo) {
		super();
		this.txtname = txtname;
		this.txtfname = txtfname;
		this.txtdate = txtdate;
		this.mob = mob;
		this.aadhaar = aadhaar;
		this.pan = pan;
		this.bankname = bankname;
		this.account = account;
		this.ifsc = ifsc;
		this.pmtadr = pmtadr;
		this.preadr = preadr;
		this.txtQexam = txtQexam;
		this.income = income;
		this.dependent = dependent;
		this.other = other;
		this.referal = referal;
		this.photo = photo;
	}

	public String getTxtname() {
		return txtname;
	}

	public void setTxtname(String txtname) {
		this.txtname = txtname;
	}

	public String getTxtfname() {
		return txtfname;
	}

	public void setTxtfname(String txtfname) {
		this.txtfname = txtfname;
	}

	public String getTxtdate() {
		return txtdate;
	}

	public void setTxtdate(String txtdate) {
		this.txtdate = txtdate;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getAadhaar() {
		return aadhaar;
	}

	public void setAadhaar(String aadhaar) {
		this.aadhaar = aadhaar;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getIfsc() {
		return ifsc;
	}

	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}

	public String getPmtadr() {
		return pmtadr;
	}

	public void setPmtadr(String pmtadr) {
		this.pmtadr = pmtadr;
	}

	public String getPreadr() {
		return preadr;
	}

	public void setPreadr(String preadr) {
		this.preadr = preadr;
	}

	public String getTxtQexam() {
		return txtQexam;
	}

	public void setTxtQexam(String txtQexam) {
		this.txtQexam = txtQexam;
	}

	public String getIncome() {
		return income;
	}

	public void setIncome(String income) {
		this.income = income;
	}

	public String getDependent() {
		return dependent;
	}

	public void setDependent(String dependent) {
		this.dependent = dependent;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public String getReferal() {
		return referal;
	}

	public void setReferal(String referal) {
		this.referal = referal;
	}

	public Part getPhoto() {
		return photo;
	}

	public void setPhoto(Part photo) {
		this.photo = photo;
	}

	public Team() {
	
	}

}
