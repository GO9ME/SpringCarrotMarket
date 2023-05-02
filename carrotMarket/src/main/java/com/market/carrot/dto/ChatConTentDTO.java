package com.market.carrot.dto;

import java.sql.Timestamp;

public class ChatConTentDTO {
	private int content_id;
	private String user_id;
	private int chat_id;
	private int items_id;
	private String content;
	private Timestamp timestamp;
	private String type;
	private String use_at;

	//현재 사용자의 메시지 상대 nick담기
	private String other_nick;
	//현재 사용자의 메시지 상대 profile을 담는다
	private String profile;
	//현재 사용자 nick
	private String nick;
	//안읽은 메시지 갯수
	private int unread;
	
	public ChatConTentDTO() {
		// TODO Auto-generated constructor stub
	}

	public ChatConTentDTO(int key, String user_id, int chat_id, int items_id, String content, Timestamp timestamp, String type,
			String use_at) {
		super();
		this.content_id = key;
		this.user_id = user_id;
		this.chat_id = chat_id;
		this.items_id = items_id;
		this.content = content;
		this.timestamp = timestamp;
		this.type = type;
		this.use_at = use_at;
	}

	@Override
	public String toString() {
		return "ChatDTO [key=" + content_id + ", user_id=" + user_id + ", chat_id=" + chat_id + ", items_id=" + items_id
				+ ", content=" + content + ", timestamp=" + timestamp + ", type=" + type + ", use_at=" + use_at + "]";
	}

	public int getKey() {
		return content_id;
	}

	public void setKey(int key) {
		this.content_id = key;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUse_at() {
		return use_at;
	}

	public void setUse_at(String use_at) {
		this.use_at = use_at;
	}

	public int getContent_id() {
		return content_id;
	}

	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}

	public String getOther_nick() {
		return other_nick;
	}

	public void setOther_nick(String other_nick) {
		this.other_nick = other_nick;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public int getUnread() {
		return unread;
	}

	public void setUnread(int unread) {
		this.unread = unread;
	}

	
}
