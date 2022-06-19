package org.alpreah.demo;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.alpreah.domain.member;
import org.alpreah.service.userservice;
import org.alpreah.persistence.member_dao;
import org.alpreah.persistence.userDAO;
import org.alpreah.service.Adminservice;
import org.springframework.context.annotation.Bean;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class HomeController {
	
	@Inject
	private member_dao m_dao;
	
	@Resource(name="Adminservice")
	private Adminservice ads;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login(Model model2) throws Exception {
		model2.addAttribute("list2",ads.list());
		
		return "/";
	}
	
	// 유저 리스트 GET //
	@Resource(name="userservice")
	private userservice userservice;
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String userlist(Model model2) throws Exception {
		model2.addAttribute("userlist", userservice.userlist());
		
		return "member";
	}
	
	@ResponseBody
	@RequestMapping(value = "Login", method = RequestMethod.POST)
	public int login(member m, HttpSession session) {
		return m_dao.Login(m, session);
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login() {
		return "login";
	}
	
	@ResponseBody
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public int register(member m) {
		return m_dao.Register(m);
	}
	
	
	/*
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	*/
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("m");
		return "redirect:/";
	}

	@ControllerAdvice
	public class JsonpAdviceController extends AbstractJsonpResponseBodyAdvice {
		public JsonpAdviceController() {
			super("callback");
		}
	}
	
	@Resource(name="Adminservice")
	private Adminservice adservice;
	@RequestMapping(value = "/productm", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		
		model.addAttribute("list",adservice.list());
		
		
		return "productm";
		
	}
	

	@Bean
	public MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter() {
		MappingJackson2HttpMessageConverter jsonConverter = new MappingJackson2HttpMessageConverter();
		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		jsonConverter.setObjectMapper(objectMapper);
		return jsonConverter;
	}

}
