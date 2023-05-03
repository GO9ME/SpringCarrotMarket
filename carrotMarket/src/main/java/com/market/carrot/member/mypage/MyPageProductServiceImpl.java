package com.market.carrot.member.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.market.carrot.dto.MyPageProductDTO;
@Service
public class MyPageProductServiceImpl implements MyPageProductService {
	@Autowired
	MyPageProductDAO dao;
	
	@Override
	public List<MyPageProductDTO> SellProduct(String id) {
		// TODO Auto-generated method stub
		return dao.getSellProduct(id);
	}

	@Override
	public List<MyPageProductDTO> BuyProduct(String id) {
		// TODO Auto-generated method stub
		return dao.getBuyProduct(id);
	}

	@Override
	public List<MyPageProductDTO> InterestProduct(String id) {
		// TODO Auto-generated method stub
		return dao.getInterestProduct(id);
	}

}
