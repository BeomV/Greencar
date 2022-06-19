package org.alpreah.service;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import org.alpreah.domain.member;
import org.alpreah.persistence.userDAO;

@Repository("userservice")

public class userserviceImpl implements userservice {
	
	@Resource(name="userDAO")
	private userDAO dao;

	public List<member> userlist() throws Exception{
		return dao.userlist();
		
	}

	
	
	

}
