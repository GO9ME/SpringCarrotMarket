package com.market.carrot.member.mypage;

import java.util.List;

import com.market.carrot.dto.MyPageBuyDTO;
import com.market.carrot.dto.MyPageProductDTO;
import com.market.carrot.dto.MyPageSellDTO;

public interface MyPageProductService {
	public List<MyPageSellDTO> SellProduct(String id); 
	public List<MyPageBuyDTO> BuyProduct(String id);
	public List<MyPageProductDTO> InterestProduct(String id);
}
