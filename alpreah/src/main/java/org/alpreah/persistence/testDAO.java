package org.alpreah.persistence;

import javax.inject.Inject;

import org.alpreah.persistence.ProductDAO;
import org.alpreah.domain.ProductVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class testDAO {

	
	@Inject
	private ProductDAO dao;
	
	@RequestMapping(value = "/testDAO", method = RequestMethod.GET)
	
	public void testDAO() throws Exception{
		
		ProductVO vo = new ProductVO();
		vo.setNo("58");
		vo.setCarbrand("���");
		vo.setCarname("EV6");
		vo.setCartrim("����");
		vo.setFueltype("����");
		vo.setDistance("1541");
		vo.setCar_no("122�� 3304");
		vo.setCarwash("�Ϸ�");
		vo.setAddressvalue("�������� 16");
		vo.setAddress_detail("���ú�");
		
		
		dao.goodsmodify(vo);
		
	}
	
}
