package com.vo;	
	
import java.io.Serializable;	
import java.util.Date;	
	
public class Gangwei implements Serializable {	
	/**	
	 * 	
	 */	
	private static final long serialVersionUID = 1L;	
	/**	
	 * 	
	 */	
 	
	private int id;	
	private String name;	
	private int zid; 
	private String sname;
	private String states;
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
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getStates() {
		return states;
	}
	public void setStates(String states) {
		this.states = states;
	}
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}	
	
	
	
}	
