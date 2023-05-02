package com.market.carrot.member.chat;

import java.util.List;

import com.market.carrot.dto.ChatConTentDTO;
import com.market.carrot.dto.ChatDTO;

public interface ChatService {
	void servicetest(ChatDTO user);

	List<ChatDTO> selectList();

	ChatDTO selectDetail(String id);

	int update(ChatDTO user);

	List<ChatConTentDTO> messageList(ChatConTentDTO dto);

	List<ChatConTentDTO> roomContentList(ChatConTentDTO dto);

	int messageSendInlist(ChatConTentDTO dto);

}
