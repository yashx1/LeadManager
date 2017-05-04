package com.src.entity;

import java.util.Date;

public class BDUpdate {

	private int id;
	private int bdId;
	private String update;
	private Date createdOn;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBDId() {
		return bdId;
	}
	public void setBDId(int bdId) {
		this.bdId = bdId;
	}
	public String getUpdate() {
		return update;
	}
	public void setUpdate(String update) {
		this.update = update;
	}
	public Date getCreatedOn() {
		return createdOn;
	}
	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}
	
	
	
	
}
