package com.market.carrot.member.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.market.carrot.dto.UserDTO;

// 서비스에서 DAO 메소드 호출
@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	LoginDAO dao;
	
	@Override
	public UserDTO checkLogin(String user_id, String password) {
		// TODO Auto-generated method stub
		UserDTO user = null;
		user = dao.Login(user_id, password);
		if ( user != null) {
			System.out.println("login 성공");
		} else {
			System.out.println("login 실패");
		}
		return user;
	}


}
