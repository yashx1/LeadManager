package com.src.entity;

import java.util.List;

public class ManagerBDMapper {

	private int idMgr;
	private List<Integer> BDList;
	
	
	public int getIdMgr() {
		return idMgr;
	}
	public void setIdMgr(int idMgr) {
		this.idMgr = idMgr;
	}
	public List<Integer> getBDList() {
		return BDList;
	}
	public void setBDList(List<Integer> bDList) {
		BDList = bDList;
	}
	
}
