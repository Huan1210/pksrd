package com.vo;	
	
import java.io.Serializable;	
import java.util.Date;	
	
public class Pks implements Serializable {	
	/**	
	 * 	
	 */	
	private static final long serialVersionUID = 1L;	
	/**	
	 * 	
	 */	
 	
	private int id;	
	private String name;	 
	private String hao;
	private String sex;
	private String fujian;
	private String info;
	private String state;
	private String fen;
	private String grade;
	private String adate;
	private int userid;	
		
	public int getId() {	
		return id;	
	}	
	public String getName() {	
		return name;	
	}	
	
	public void setName(String name) {	
		this.name = name;	
	}	
	
	public void setId(int id) {	
		this.id = id;	
	}
	public String getHao() {
		return hao;
	}
	public void setHao(String hao) {
		this.hao = hao;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getFujian() {
		return fujian;
	}
	public void setFujian(String fujian) {
		this.fujian = fujian;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getFen() {
		return fen;
	}
	public void setFen(String fen) {
		this.fen = fen;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}	
		
	
}	
