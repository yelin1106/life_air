package air.life.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoastController {
	
	@RequestMapping(value="boast.do", method=RequestMethod.GET)
	public String viewBoast() {
		
		return "boast/korea";
	}//viewBoast
	
}//class
