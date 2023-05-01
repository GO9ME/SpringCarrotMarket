package com.market.carrot.dto;

import java.sql.Timestamp;

public class ProductDTO {
	private int items_id;
	private String user_id;
	private String category;
	private String title;
	private String contents;
	private String price;
	private String status_cd;
	private int views;
	private Timestamp registerd_at;
	private Timestamp updated_at;
	private String use_at;
	
	public ProductDTO() {
		super();
	}

	@Override
	public String toString() {
		return "ProductDTO [items_id=" + items_id + ", user_id=" + user_id + ", category=" + category + ", title="
				+ title + ", contents=" + contents + ", price=" + price + ", status_cd=" + status_cd + ", views="
				+ views + ", registerd_at=" + registerd_at + ", updated_at=" + updated_at + ", use_at=" + use_at + "]";
	}


	public ProductDTO(int items_id, String user_id, String category, String title, String contents, String price,
			String status_cd, int views, Timestamp registerd_at, Timestamp updated_at, String use_at) {
		super();
		this.items_id = items_id;
		this.user_id = user_id;
		this.category = category;
		this.title = title;
		this.contents = contents;
		this.price = price;
		this.status_cd = status_cd;
		this.views = views;
		this.registerd_at = registerd_at;
		this.updated_at = updated_at;
		this.use_at = use_at;
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

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
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

	public Timestamp getRegisterd_at() {
		return registerd_at;
	}

	public void setRegisterd_at(Timestamp registerd_at) {
		this.registerd_at = registerd_at;
	}

	public Timestamp getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Timestamp updated_at) {
		this.updated_at = updated_at;
	}

	public String getUse_at() {
		return use_at;
	}

	public void setUse_at(String use_at) {
		this.use_at = use_at;
	}

	
	
	
	
	
}


