package com.market.carrot.member.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.market.carrot.dto.UserDTO;
import com.market.carrot.rowmapper.UserRowMapper;

@Repository
public class LoginDAOImpl implements LoginDAO{
	
	@Autowired
	private JdbcTemplate mytemplate;
	
	@Override
	public UserDTO Login(String user_id, String password) {
		// TODO Auto-generated method stub
		return mytemplate.queryForObject("select * from user where user_id = ? and password= ?", new Object[]{user_id, password}, new UserRowMapper());
	}
}
