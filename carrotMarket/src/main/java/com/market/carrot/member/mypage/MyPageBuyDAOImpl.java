package com.market.carrot.member.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.market.carrot.dto.MyPageBuyDTO;
import com.market.carrot.rowmapper.MyPageBuyRowMapper;
@Repository
public class MyPageBuyDAOImpl implements MyPageBuyDAO {
	@Autowired
	JdbcTemplate template;
	
	@Override
	public List<MyPageBuyDTO> selectBuyList(String id) {
		// TODO Auto-generated method stub
		return template.query("select t.S_CD, t.items_id, t.user_id, t1.TITLE, t1.CATEGORY, "
				+ " t1.registerd_at, t1.STATUS_CD "
				+ "from sell t "
				+ "left join items t1 "
				+ "on t.items_id = t1.items_id "
				+ "where 1=1 "
				+ "and t1.USE_AT = 'y' "
				+ "and t.user_id = ? "
				+ "order by t.DATE desc",
				new Object[] { id }, 
				new MyPageBuyRowMapper());
	}

}
