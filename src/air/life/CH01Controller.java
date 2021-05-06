package air.life;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CH01Controller {
	
	@RequestMapping(value="CH01.do", method=RequestMethod.GET)
	public String viewCH01() {
		
		return "CH01/CH01";
	}//viewCH01
	
	@RequestMapping(value="Q01.do", method=RequestMethod.GET)
	public String viewQ01() {
		
		return "CH01/Q01";
	}//viewQ01
	
	@RequestMapping(value="Q02.do", method=RequestMethod.GET)
	public String viewQ02() {
		
		return "CH01/Q02";
	}//viewQ02
	
	@RequestMapping(value="Q03.do", method=RequestMethod.GET)
	public String viewQ03() {
		
		return "CH01/Q03";
	}//viewQ03
	
	@RequestMapping(value="Q04.do", method=RequestMethod.GET)
	public String viewQ04() {
		
		return "CH01/Q04";
	}//viewQ04
	
	@RequestMapping(value="Q05.do", method=RequestMethod.GET)
	public String viewQ05() {
		
		return "CH01/Q05";
	}//viewQ05
	
}//class
