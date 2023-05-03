package com.market.carrot.member.chat;

import java.util.List;

import com.market.carrot.dto.ChatConTentDTO;

public interface ChatDAO {

	
	List<ChatConTentDTO> messageList(ChatConTentDTO dto);
	
	List<ChatConTentDTO> roomContentList(ChatConTentDTO dto);
	
	int messageSendInlist(ChatConTentDTO dto);
	
	int createChatRoom(int items_id);
	
	int messageSend(String user_id, int items_id);
	
	int searchChatLastId();
	
	int getCountChatFromItem(int items_id);
}
