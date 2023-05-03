package com.market.carrot.member.delete;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.market.carrot.dto.UserDTO;

@Service
public class DeleteServiceImpl implements DeleteService {
	
	@Autowired
	DeleteDAO dao;

	@Override
	public int delete(String userid) {
		return dao.delet(userid);
	}
	

}
