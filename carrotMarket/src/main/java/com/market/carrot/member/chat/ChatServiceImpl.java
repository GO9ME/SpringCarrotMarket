package com.market.carrot.member.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.market.carrot.dto.ChatConTentDTO;

// 서비스에서 DAO 메소드 호출
@Service
public class ChatServiceImpl implements ChatService {
	@Autowired
	ChatDAO dao;

	@Override
	public List<ChatConTentDTO> messageList(ChatConTentDTO dto) {
		// TODO Auto-generated method stub
		List<ChatConTentDTO> list = dao.messageList(dto);

		return list;
	}

	@Override
	public List<ChatConTentDTO> roomContentList(ChatConTentDTO dto) {
		// TODO Auto-generated method stub
		List<ChatConTentDTO> list = dao.roomContentList(dto);
		return list;
	}

	@Override
	public int messageSendInlist(ChatConTentDTO dto) {
		// TODO Auto-generated method stub

		return dao.messageSendInlist(dto);
	}
	
	public int createChatRoom(String user_id, String items_id) {
		
		return dao.createChatRoom(user_id, items_id);
	}
	
	
}
