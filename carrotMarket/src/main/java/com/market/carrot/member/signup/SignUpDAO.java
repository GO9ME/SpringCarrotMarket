package com.market.carrot.member.signup;

import com.market.carrot.dto.UserDTO;

public interface SignUpDAO {
	
	int signUp(UserDTO user);

	
	int checkid(String userid);

}
