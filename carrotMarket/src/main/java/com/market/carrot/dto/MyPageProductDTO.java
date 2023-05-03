package com.market.carrot.dto;

import java.sql.Date;

public class MyPageProductDTO {
	
	private int interest_id;
	private int items_id; 	//상품번호
	private String user_id; //아이디
	private String title;
	private String category;
	private Date registerd_at; 
	private String status_cd;
	private String imageFileno;
	private String originalFilename;
	private String storeFilename;
	private String nickname;
	
	public MyPageProductDTO() {
		super();
	}
	
	public MyPageProductDTO(int interest_id, int items_id, String user_id, String title, String category,
			Date registerd_at, String status_cd, String imageFileno, String originalFilename, String storeFilename,
			String nickname) {
		super();
		this.interest_id = interest_id;
		this.items_id = items_id;
		this.user_id = user_id;
		this.title = title;
		this.category = category;
		this.registerd_at = registerd_at;
		this.status_cd = status_cd;
		this.imageFileno = imageFileno;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
		this.nickname = nickname;
	}





	@Override
	public String toString() {
		return "MyPageProductDTO [interest_id=" + interest_id + ", items_id=" + items_id + ", user_id=" + user_id
				+ ", title=" + title + ", category=" + category + ", registerd_at=" + registerd_at + ", status_cd="
				+ status_cd + ", imageFileno=" + imageFileno + ", originalFilename=" + originalFilename
				+ ", storeFilename=" + storeFilename + ", nickname=" + nickname + "]";
	}

	public int getInterest_id() {
		return interest_id;
	}

	public void setInterest_id(int interest_id) {
		this.interest_id = interest_id;
	}

	public int getItems_id() {
		return items_id;
	}

	public void setItems_id(int items_id) {
		this.items_id = items_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Date getRegisterd_at() {
		return registerd_at;
	}

	public void setRegisterd_at(Date registerd_at) {
		this.registerd_at = registerd_at;
	}

	public String getStatus_cd() {
		return status_cd;
	}

	public void setStatus_cd(String status_cd) {
		this.status_cd = status_cd;
	}

	public String getImageFileno() {
		return imageFileno;
	}

	public void setImageFileno(String imageFileno) {
		this.imageFileno = imageFileno;
	}

	public String getOriginalFilename() {
		return originalFilename;
	}

	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}

	public String getStoreFilename() {
		return storeFilename;
	}

	public void setStoreFilename(String storeFilename) {
		this.storeFilename = storeFilename;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
}
