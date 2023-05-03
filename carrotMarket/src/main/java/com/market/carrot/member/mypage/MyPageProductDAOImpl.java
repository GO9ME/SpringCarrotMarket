package com.market.carrot.member.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.market.carrot.dto.MyPageProductDTO;
import com.market.carrot.rowmapper.MyPageProductRowMapper;

@Repository
public class MyPageProductDAOImpl implements MyPageProductDAO {
	@Autowired
	JdbcTemplate template;

	@Override
	public List<MyPageProductDTO> getSellProduct(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MyPageProductDTO> getBuyProduct(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MyPageProductDTO> getInterestProduct(String id) {

		return template.query(
				"select t.interest_id, t.items_id, t.user_id, t1.TITLE, t1.CATEGORY, t1.registerd_at, t1.STATUS_CD, t2.imageFileno, t2.originalFilename, t2.storeFilename , t3.NICKNAME\r\n"
						+ "" + "from interest t\r\n" + "left join items t1\r\n" + "on t.items_id = t1.items_id\r\n"
						+ "left join items_photo t2\r\n" + "on t1.items_id = t2.items_id\r\n" + "left join user t3\r\n"
						+ "on t.user_id = t3.user_id\r\n" + "where 1=1\r\n"
						// + "and t.user_id =?\r\n"
						+ "and t1.USE_AT = 'y'\r\n" + "order by t1.registerd_at desc \r\n" + ";",
				//new Object[] { id },
				new MyPageProductRowMapper());
	}
}
