package com.market.carrot.member.mypage;

import java.util.List;

import com.market.carrot.dto.MyPageProductDTO;

public interface MyPageProductService {
	public List<MyPageProductDTO> SellProduct(String id); 
	public List<MyPageProductDTO> BuyProduct(String id);
	public List<MyPageProductDTO> InterestProduct(String id);
}
