package org.alpreah.persistence;

import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.alpreah.domain.ProductVO;
import org.alpreah.domain.member;
import org.springframework.stereotype.Repository;

@Repository("ProductDAO")
public class ProductDAOImp implements ProductDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	 private static final String namespace = "org.alpreah.mappers.productMapper";
	
	@Override
	public void insertProduct(ProductVO vo) {
		
		sqlSession.insert(namespace+".insertProduct",vo);
		
		
	}
	
	@Override
	public List<ProductVO> list() throws Exception {
		
		return sqlSession.selectList(namespace+ ".list");

		
		
	}
	@Override
	public List<ProductVO> searchlist() throws Exception {
		
		return sqlSession.selectList(namespace+ ".searchlist");

		
		
	}
	
	public int insertProudct(ProductVO vo) {
		
		try {
			sqlSession.insert(namespace + "insertProduct", vo);
			return 0;
		}
		catch (Exception e) {
			e.printStackTrace();
			return -2;
		}
	}
	
	@Override
	public ProductVO goodsView(int no) throws Exception {
		return sqlSession.selectOne(namespace+ ".goodsView", no);
	}


	/*@Override
	public void goodsmodify(ProductVO vo) throws Exception{
		sqlSession.update(namespace+ ".goodsmodify", vo);
		
	}*/
	@Override
	public int goodsmodify(ProductVO vo) {

		return sqlSession.update(namespace+ ".goodsmodify", vo);
			


	}
	
	@Override
	public int goodsdelete(ProductVO vo) {
		return sqlSession.delete(namespace+ ".goodsdelete", vo);
	}
}
