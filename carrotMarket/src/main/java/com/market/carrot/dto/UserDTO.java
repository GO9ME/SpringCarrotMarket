package com.market.carrot.dto;

import java.sql.Date;

public class UserDTO {
	private String user_id;
	private String name;
	private String nickname;
	private String password;
	private String email;
	private String sido;
	private String sigun;
	private String dong;
	private String cellphone;
	private String certification;
	private String profile_img;
	private Date join_date;
	private Date access_date;
	private String use_at;
	
		
	public UserDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public UserDTO(String user_id, String name, String nickname, String password, String email, String sido,
			String sigun, String dong, String cellphone, String certification, String profile_img, Date join_date,
			Date access_date, String use_at) {
		super();
		this.user_id = user_id;
		this.name = name;
		this.nickname = nickname;
		this.password = password;
		this.email = email;
		this.sido = sido;
		this.sigun = sigun;
		this.dong = dong;
		this.cellphone = cellphone;
		this.certification = certification;
		this.profile_img = profile_img;
		this.join_date = join_date;
		this.access_date = access_date;
		this.use_at = use_at;
	}




	@Override
	public String toString() {
		return "UserDTO [user_id=" + user_id + ", name=" + name + ", nickname=" + nickname + ", password=" + password
				+ ", email=" + email + ", sido=" + sido + ", sigun=" + sigun + ", dong=" + dong + ", cellphone="
				+ cellphone + ", certification=" + certification + ", profile_img=" + profile_img + ", join_date="
				+ join_date + ", access_date=" + access_date + ", use_at=" + use_at + "]";
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getSigun() {
		return sigun;
	}
	public void setSigun(String sigun) {
		this.sigun = sigun;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public Date getAccess_date() {
		return access_date;
	}
	public void setAccess_date(Date access_date) {
		this.access_date = access_date;
	}
	public String getUse_at() {
		return use_at;
	}
	public void setUse_at(String use_at) {
		this.use_at = use_at;
	}
	
	
	
}
