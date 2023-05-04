package com.market.carrot.member.mypage;

import java.util.List;

import com.market.carrot.dto.MyPageBuyDTO;

public interface MyPageBuyDAO {
	public List<MyPageBuyDTO> selectBuyList(String user_id); 
}
