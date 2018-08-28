package com.vo;	
	
import java.io.Serializable;	
import java.util.Date;	
	
public class Zhuxue implements Serializable {	
	/**	
	 * 	
	 */	
	private static final long serialVersionUID = 1L;	
	/**	
	 * 	
	 */	
 	
	private int id;	
	private String name;	 
	private String info;
	private String shu;
	private String jdate;
	private String adate;
		
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
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getShu() {
		return shu;
	}
	public void setShu(String shu) {
		this.shu = shu;
	}
	public String getJdate() {
		return jdate;
	}
	public void setJdate(String jdate) {
		this.jdate = jdate;
	}
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}	
	
	
	
}	
