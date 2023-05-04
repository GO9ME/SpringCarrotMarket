package com.market.carrot.dto;

import java.sql.Date;

public class MyPageSellDTO {
	private int items_id;
	private String user_id;
	private String category;
	private String title;
	private String contents;
	private String status_cd;
	private int views;
	private Date registerd_at;

	public MyPageSellDTO() {
		super();
	}

	public MyPageSellDTO(int items_id, String user_id, String category, String title, String contents, String status_cd,
			int views, Date registerd_at) {
		super();
		this.items_id = items_id;
		this.user_id = user_id;
		this.category = category;
		this.title = title;
		this.contents = contents;
		this.status_cd = status_cd;
		this.views = views;
		this.registerd_at = registerd_at;
	}

	@Override
	public String toString() {
		return "MyPageSellDTO [items_id=" + items_id + ", user_id=" + user_id + ", category=" + category + ", title="
				+ title + ", contents=" + contents + ", status_cd=" + status_cd + ", views=" + views + ", registerd_at="
				+ registerd_at + "]";
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getStatus_cd() {
		return status_cd;
	}

	public void setStatus_cd(String status_cd) {
		this.status_cd = status_cd;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public Date getRegisterd_at() {
		return registerd_at;
	}

	public void setRegisterd_at(Date registerd_at) {
		this.registerd_at = registerd_at;
	}

}
