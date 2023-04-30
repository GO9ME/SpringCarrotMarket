package com.market.carrot.member.login;

import com.market.carrot.dto.UserDTO;

public interface LoginService {
	
	UserDTO checkLogin(String user_id, String password);
}
