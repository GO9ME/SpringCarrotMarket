package com.market.carrot.member.chat;

import java.util.ArrayList;
import java.util.List;

import com.market.carrot.dto.ChatConTentDTO;
import com.market.carrot.dto.ChatDTO;

public interface ChatDAO {
	void test();

	int insert(ChatDTO user);

	List<ChatDTO> select();
	
	ChatDTO read(String id);
	
	int update(ChatDTO dto);
	
	int delete(String id);
	
	List<ChatConTentDTO> messageList(ChatConTentDTO dto);
	
	List<ChatConTentDTO> roomContentList(ChatConTentDTO dto);
	
	int messageSendInlist(ChatConTentDTO dto);
}
