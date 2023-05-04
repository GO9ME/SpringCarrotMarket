package com.market.carrot.dto;

import java.sql.Date;

public class MyPageBuyDTO {
	private int s_cd;
	private int items_id;
	private String user_id;
	private String title;
	private String category;
	private Date registerd_at;
	private String status_cd;

	public MyPageBuyDTO() {
		super();
	}

	public MyPageBuyDTO(int s_cd, int items_id, String user_id, String title, String category, Date registerd_at,
			String status_cd) {
		super();
		this.s_cd = s_cd;
		this.items_id = items_id;
		this.user_id = user_id;
		this.title = title;
		this.category = category;
		this.registerd_at = registerd_at;
		this.status_cd = status_cd;
	}

	@Override
	public String toString() {
		return "MyPageBuyDTO [s_cd=" + s_cd + ", items_id=" + items_id + ", user_id=" + user_id + ", title=" + title
				+ ", category=" + category + ", registerd_at=" + registerd_at + ", status_cd=" + status_cd + "]";
	}

	public int getS_cd() {
		return s_cd;
	}

	public void setS_cd(int s_cd) {
		this.s_cd = s_cd;
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

}
