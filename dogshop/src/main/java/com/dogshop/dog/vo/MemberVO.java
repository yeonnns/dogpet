package com.dogshop.dog.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberVO {
	private int mno, cnt;
	private String id, name, pw, mail, tel, sdate,  gen;
	private Date jdate;
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate() {
		SimpleDateFormat form = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		sdate = form.format(jdate);
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getGen() {
		return gen;
	}
	public void setGen(String gen) {
		this.gen = gen;
	}
	public Date getJdate() {
		return jdate;
	}
	public void setJdate(Date jdate) {
		this.jdate = jdate;
		setSdate();
	}
	@Override
	public String toString() {
		return "MemberVO [mno=" + mno + ", cnt=" + cnt + ", id=" + id + ", name=" + name + ", pw=" + pw + ", mail="
				+ mail + ", tel=" + tel + ", sdate=" + sdate + ", gen=" + gen + ", jdate=" + jdate + "]";
	}
	
	
	
}
