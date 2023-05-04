package com.market.carrot.member.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.market.carrot.dto.MyPageSellDTO;
import com.market.carrot.rowmapper.MyPageSellRowMapper;
@Repository
public class MyPageSellDAOImpl implements MyPageSellDAO {
	@Autowired
	JdbcTemplate template;
	
	@Override
	public List<MyPageSellDTO> selectSellList(String id) {
		// TODO Auto-generated method stub
		return template.query("select t.items_id, t.user_id, t.CATEGORY, t.TITLE, t.CONTENTS, t.STATUS_CD, t.VIEWS, t.registerd_at "
				+ "from items t "
				+ "where 1=1 "
				+ "and t.USE_AT = 'y' "
				+ "and t.user_id = ?",
				new Object[] { id }, 
				new MyPageSellRowMapper());
	}

}
