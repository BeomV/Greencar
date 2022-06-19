package org.alpreah.persistence;


import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.alpreah.domain.member;
import org.springframework.stereotype.Repository;


@Repository("userDAO")
public class userDAOImpl implements userDAO {
	
	
	@Inject
	private SqlSession sqlSession;
	
	 private static final String namespace = "org.alpreah.mappers.productMapper";
	 
	 @Override
	 public List<member> userlist() throws Exception{
		 
		 return sqlSession.selectList(namespace+ ".userlist");
	 }
	

}
