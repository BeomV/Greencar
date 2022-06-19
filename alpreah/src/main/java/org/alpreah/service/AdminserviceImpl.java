package org.alpreah.service;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import org.alpreah.domain.ProductVO;
import org.alpreah.persistence.ProductDAO;

@Repository("Adminservice")
public class AdminserviceImpl implements Adminservice {
	
	@Resource(name="ProductDAO")
	private ProductDAO ProductDAO;


	@Override
	public List<ProductVO> list() throws Exception {
		// TODO Auto-generated method stub
		return ProductDAO.list();
	}
	
	@Override
	public List<ProductVO> searchlist() throws Exception {
		// TODO Auto-generated method stub
		return ProductDAO.searchlist();
	}
	
	@Override
	public ProductVO goodsView(int no) throws Exception {
		return ProductDAO.goodsView(no);
	}
	
	@Override
	public int goodsmodify(ProductVO vo) {
		return ProductDAO.goodsmodify(vo);
	}
	
	@Override
	public int goodsdelete(ProductVO vo) {
		return ProductDAO.goodsdelete(vo);
	}
	
	
	

}
