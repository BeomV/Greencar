package org.alpreah.demo;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.alpreah.persistence.ProductDAO;
import org.alpreah.service.Adminservice;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.alpreah.domain.ProductVO;
import org.alpreah.domain.member;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class AdminController {
	
	@Resource(name="Adminservice")
	private Adminservice adservice;
	
	@Inject
	private ProductDAO dao;
	
	

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String register() {
		return "product";
	}

	
	/*@RequestMapping(value = "/modify2", method = RequestMethod.GET)
	public String modify2() {
		return "modify2";
	}*/


	@ResponseBody
	@RequestMapping(value = "/insertProduct", method = RequestMethod.POST)
	public String insertproduct(ProductVO vo) {
		dao.insertProduct(vo);
		 return "redirect:/product";
		
	}
	
	// 상품 조회

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getGoodsview(@RequestParam("n") int no, Model model) throws Exception {

	 
	 ProductVO goods = adservice.goodsView(no);
	 
	 model.addAttribute("goods", goods);
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getGoodsModify(@RequestParam("n") int no, Model model) throws Exception {

	 ProductVO goods = adservice.goodsView(no); 
	 model.addAttribute("goods", goods);
	 
	}

	// 상품 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String postGoodsModify(ProductVO vo, RedirectAttributes rttr) throws Exception {
	
	 adservice.goodsmodify(vo);
	 rttr.addFlashAttribute("result", "modify success");

	 
	 return "redirect:/productm";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String postGoodsDelete(ProductVO vo, RedirectAttributes rttr) throws Exception {
	
	 adservice.goodsdelete(vo);
	 rttr.addFlashAttribute("result", "modify success");

	 
	 return "redirect:/productm";
	}
	
	@Resource(name="Adminservice")
	private Adminservice ads;
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model2) throws Exception {
		model2.addAttribute("list",ads.list());
		
		return "/index";
	}
	
	
	/*@Resource(name="Adminservice")
	private Adminservice adservice;
	@RequestMapping(value = "/searchlist", method = RequestMethod.GET)
	public String searchlist(Model model) throws Exception{
		
		model.addAttribute("list",adservice.searchlist());
		
		
		return "productm";
		
	}*/
	
	/*@Resource(name="Adminservice")
	private Adminservice adservice;
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public void getgoodslist(Model model) throws Exception {

		List<ProductVO> list = adservice.list();
		model.addAttribute("list", list);
		
		
		
	}*/
	
}
