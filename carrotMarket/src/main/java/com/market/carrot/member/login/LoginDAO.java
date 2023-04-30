package com.market.carrot.member.login;

import java.util.List;

import com.market.carrot.dto.UserDTO;

public interface LoginDAO {
	UserDTO Login(String user_id, String password);
}
