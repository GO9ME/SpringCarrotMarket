package com.market.carrot.member.mypage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageUpdateServiceImpl implements MyPageUpdateService {

	@Autowired
	MyPageUpdateDAO dao;

	@Override
	public int nicknameUpdate(String id, String nick) {
		return dao.nicknameUpdate(id, nick);
	}


}
