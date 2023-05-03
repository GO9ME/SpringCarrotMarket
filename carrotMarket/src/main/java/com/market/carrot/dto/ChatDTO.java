package com.market.carrot.dto;

import java.sql.Timestamp;

public class ChatDTO {
	private int chat_id;
	private int items_id;
	private Timestamp registered_at;
	
	public ChatDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ChatDTO(int chat_id, int items_id, Timestamp registered_at) {
		super();
		this.chat_id = chat_id;
		this.items_id = items_id;
		this.registered_at = registered_at;
	}

	@Override
	public String toString() {
		return "ChatDTO [chat_id=" + chat_id + ", items_id=" + items_id + ", registered_at=" + registered_at + "]";
	}
	
	public int getChat_id() {
		return chat_id;
	}
	public void setChat_id(int chat_id) {
		this.chat_id = chat_id;
	}
	public int getItems_id() {
		return items_id;
	}
	public void setItems_id(int items_id) {
		this.items_id = items_id;
	}
	public Timestamp getRegistered_at() {
		return registered_at;
	}
	public void setRegistered_at(Timestamp registered_at) {
		this.registered_at = registered_at;
	}
	
	

}
