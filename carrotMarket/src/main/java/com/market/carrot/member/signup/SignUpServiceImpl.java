package com.market.carrot.member.signup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.market.carrot.dto.UserDTO;

@Service
public class SignUpServiceImpl implements SignUpService {
	
	@Autowired
	SignUpDAO dao;

	@Override
	public int signUp(UserDTO user) {
		return dao.signUp(user);
	}

	@Override
	public int checkid(String userid) {
		return dao.checkid(userid);
	}
	

}
