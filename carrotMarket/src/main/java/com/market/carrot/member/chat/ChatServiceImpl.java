package com.market.carrot.member.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// 서비스에서 DAO 메소드 호출
@Service
public class ChatServiceImpl implements ChatService {
	@Autowired
	ChatDAO dao;

	public ChatServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void servicetest(ChatDTO user) {
		// TODO Auto-generated method stub
		System.out.println("나 service");
		dao.insert(user);
	}

	@Override
	public List<ChatDTO> selectList() {
		// TODO Auto-generated method stub

		return dao.select();
	}

	@Override
	public ChatDTO selectDetail(String id) {
		// TODO Auto-generated method stub
		ChatDTO user = dao.read(id);
		return user;
	}

	@Override
	public int update(ChatDTO user) {
		// TODO Auto-generated method stub
		int result = dao.update(user);
		return result;
	}

}
