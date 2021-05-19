package air.life.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CH00Controller {
	
	@RequestMapping(value="CH00.do", method=RequestMethod.GET)
	public String viewCH00() {
		
		return "CH00/CH00";
	}//viewCH00
	
	@RequestMapping(value="Loading.do", method=RequestMethod.GET)
	public String viewLoading() {
		
		return "CH00/Loading";
	}//viewLoading
	
	@RequestMapping(value="Loading_Last.do", method=RequestMethod.GET)
	public String viewLoading_Last() {
		
		return "CH00/Loading_Last";
	}//viewLoading_Last
	
}//class
