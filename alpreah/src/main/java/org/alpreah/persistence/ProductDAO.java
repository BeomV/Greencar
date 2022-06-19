package org.alpreah.persistence;

import java.util.List;

import org.alpreah.domain.ProductVO;

public interface ProductDAO {
	
	public void insertProduct(ProductVO vo);
	

	public List<ProductVO> list() throws Exception;
	
	public List<ProductVO> searchlist() throws Exception;
	
	public ProductVO goodsView(int no) throws Exception;
	
	//public void goodsmodify(ProductVO vo) throws Exception;
	
	public int goodsmodify(ProductVO vo);
	//public void goodsmodify(ProductVO vo) throws Exception;
	
	public int goodsdelete(ProductVO vo);
}
