package org.alpreah.service;

import org.alpreah.domain.ProductVO;
import java.util.List;

public interface Adminservice {
	
	public List<ProductVO> list() throws Exception;
	
	public List<ProductVO> searchlist() throws Exception;
	
	public ProductVO goodsView(int no) throws Exception;

	public int goodsmodify(ProductVO vo);
	
	public int goodsdelete(ProductVO vo);
	
	//public void goodsmodify(ProductVO vo) throws Exception;
}
