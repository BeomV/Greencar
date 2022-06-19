package org.alpreah.persistence;


import java.util.List;

import org.alpreah.domain.member;


public interface userDAO {
	
	public List<member> userlist() throws Exception;

}
