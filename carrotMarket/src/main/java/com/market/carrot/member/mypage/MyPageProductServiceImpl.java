package com.market.carrot.member.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.market.carrot.dto.MyPageBuyDTO;
import com.market.carrot.dto.MyPageProductDTO;
import com.market.carrot.dto.MyPageSellDTO;
@Service
public class MyPageProductServiceImpl implements MyPageProductService {
	@Autowired
	MyPageProductDAO dao;
	@Autowired
	MyPageBuyDAO buyDao;
	@Autowired
	MyPageSellDAO sellDao;
	
	@Override
	public List<MyPageSellDTO> SellProduct(String id) {
		// TODO Auto-generated method stub
		return sellDao.selectSellList(id);
	}

	@Override
	public List<MyPageBuyDTO> BuyProduct(String id) {
		// TODO Auto-generated method stub
		return buyDao.selectBuyList(id);
	}

	@Override
	public List<MyPageProductDTO> InterestProduct(String id) {
		// TODO Auto-generated method stub
		return dao.getInterestProduct(id);
	}

}
