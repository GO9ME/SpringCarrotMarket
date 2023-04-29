package com.market.carrot.member.chat;

import java.util.List;

public interface ChatService {
	void servicetest(ChatDTO user);

	List<ChatDTO> selectList();

	ChatDTO selectDetail(String id);
	
	int update(ChatDTO user);

}
