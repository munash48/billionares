package com.kal.bilionaresbackend.dto;

public class VoteCategory {
	

	
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getVotecount() {
		return votecount;
	}
	public void setVotecount(int votecount) {
		this.votecount = votecount;
	}
	public int getPostcount() {
		return postcount;
	}
	public void setPostcount(int postcount) {
		this.postcount = postcount;
	}
	public int getComcount() {
		return comcount;
	}
	public void setComcount(int comcount) {
		this.comcount = comcount;
	}
	public int getAdcount() {
		return adcount;
	}
	public void setAdcount(int adcount) {
		this.adcount = adcount;
	}
	
	/*
	 * 
	 * Private fields
	 */
	
	private int catid;
	private int uid;
	private int votecount;
	private int postcount;
	private int comcount;
	private int adcount;
	
	
	

}
