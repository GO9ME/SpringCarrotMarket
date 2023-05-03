package com.market.carrot.member.chat;

import java.util.List;

import com.market.carrot.dto.ChatConTentDTO;

public interface ChatDAO {

	
	List<ChatConTentDTO> messageList(ChatConTentDTO dto);
	
	List<ChatConTentDTO> roomContentList(ChatConTentDTO dto);
	
	int messageSendInlist(ChatConTentDTO dto);
	
	int createChatRoom(String user_id, String items_id);
}
