package com.market.carrot.member.chat;

import java.util.List;

public interface ChatDAO {
	void test();

	int insert(ChatDTO user);

	List<ChatDTO> select();
	
	ChatDTO read(String id);
	
	int update(ChatDTO dto);
	
	int delete(String id);
}
