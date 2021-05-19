package air.life.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import air.life.service.MainService;

@Controller
@SessionAttributes({"name","gender","star","nums","country"})
public class CH01Controller {
	
	@RequestMapping(value="CH01.do", method=RequestMethod.GET)
	public String viewCH01() {
		
		return "CH01/CH01";
	}//viewCH01
	
	@RequestMapping(value="Q01.do", method=RequestMethod.GET)
	public String viewQ01() {
		
		return "CH01/Q01";
	}//viewQ01
	
	@RequestMapping(value="randomname.do", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	@ResponseBody
	public String getRandomname() {
		String json="";
		
		json=new MainService().getRandomname();
		
		return json;
	}//getRandomname
	
	@RequestMapping(value="setname.do", method=RequestMethod.POST, produces="application/text;charset=UTF-8")
	@ResponseBody
	public String setName(String name, Model model) {
		model.addAttribute("name", name);
		return "success";
	}//setName
	
	@RequestMapping(value="Q02.do", method=RequestMethod.GET)
	public String viewQ02() {
		return "CH01/Q02";
	}//viewQ02
	
	@RequestMapping(value="setgender.do", method=RequestMethod.POST, produces="application/text;charset=UTF-8")
	@ResponseBody
	public String setGender(String gender, Model model) {
		model.addAttribute("gender", gender);
		return "success";
	}//setGender
	
	@RequestMapping(value="Q03.do", method=RequestMethod.GET)
	public String viewQ03() {
		
		return "CH01/Q03";
	}//viewQ03
	
	@RequestMapping(value="setstar.do", method=RequestMethod.POST, produces="application/text;charset=UTF-8")
	@ResponseBody
	public String setStar(String star, Model model) {
		model.addAttribute("star", star);
		return "success";
	}//setStar
	
	@RequestMapping(value="Q04.do", method=RequestMethod.GET)
	public String viewQ04() {
		
		return "CH01/Q04";
	}//viewQ04
	
	@RequestMapping(value="setnumbers.do", method=RequestMethod.POST, produces="application/text;charset=UTF-8")
	@ResponseBody
	public String setNumbers( HttpServletRequest request, Model model) {
		String[] nums = request.getParameterValues("nums[]");
		model.addAttribute("nums", nums);
		return "success";
	}//setNumbers
	
	@RequestMapping(value="Q05.do", method=RequestMethod.GET)
	public String viewQ05() {
		
		return "CH01/Q05";
	}//viewQ05
	
	@RequestMapping(value="setcountry.do", method=RequestMethod.POST, produces="application/text;charset=UTF-8")
	@ResponseBody
	public String setCountry(String country, Model model) {
		model.addAttribute("country", country);
		return "success";
	}//setStar
	
}//class
