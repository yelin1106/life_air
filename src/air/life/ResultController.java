package air.life;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ResultController {
	
	@RequestMapping(value="see_more.do", method=RequestMethod.GET)
	public String viewSeeMore() {
		
		return "result/see_more";
	}//viewSeeMore
	
	@RequestMapping(value="landing.do", method=RequestMethod.GET)
	public String viewLanding() {
		
		return "result/landing/korea";
	}//viewLanding
	
	@RequestMapping(value="ticket.do", method=RequestMethod.GET)
	public String viewTicket() {
		
		return "result/ticket/korea";
	}//viewTicket
	
}//class
