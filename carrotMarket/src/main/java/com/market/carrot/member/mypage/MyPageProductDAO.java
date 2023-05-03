package com.market.carrot.member.mypage;

import java.util.List;

import com.market.carrot.dto.MyPageProductDTO;

public interface MyPageProductDAO {
	public List<MyPageProductDTO> getSellProduct(String id); 
	public List<MyPageProductDTO> getBuyProduct(String id);
	public List<MyPageProductDTO> getInterestProduct(String id);
}
