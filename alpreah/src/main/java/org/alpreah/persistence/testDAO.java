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
		vo.setCarbrand("기아");
		vo.setCarname("EV6");
		vo.setCartrim("에어");
		vo.setFueltype("전기");
		vo.setDistance("1541");
		vo.setCar_no("122하 3304");
		vo.setCarwash("완료");
		vo.setAddressvalue("서원남로 16");
		vo.setAddress_detail("애플빌");
		
		
		dao.goodsmodify(vo);
		
	}
	
}
