package com.vo;	
	
import java.io.Serializable;	
import java.util.Date;	
	
public class Message implements Serializable {	
	/**	
	 * 	
	 */	
	private static final long serialVersionUID = 1L;	
	/**	
	 * 	
	 */	
 	
	private int id;	
	private String name;
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
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}	
		
	
}	
