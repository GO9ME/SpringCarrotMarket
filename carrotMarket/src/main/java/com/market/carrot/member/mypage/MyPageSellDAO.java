package com.market.carrot.member.mypage;

import java.util.List;

import com.market.carrot.dto.MyPageSellDTO;

public interface MyPageSellDAO {
	public List<MyPageSellDTO> selectSellList(String user_id); 
}
