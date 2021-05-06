package air.life;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CH02Controller {
	
	@RequestMapping(value="CH02.do", method=RequestMethod.GET)
	public String viewCH02() {
		
		return "CH02/CH02";
	}//viewCH02
	
	@RequestMapping(value="Q06.do", method=RequestMethod.GET)
	public String viewQ06() {
		
		return "CH02/Q06";
	}//viewQ06
	
	@RequestMapping(value="Q07.do", method=RequestMethod.GET)
	public String viewQ07() {
		
		return "CH02/Q07";
	}//viewQ07
	
	@RequestMapping(value="Q07_type.do", method=RequestMethod.GET)
	public String viewQ07_type() {
		
		return "CH02/Q07_type";
	}//viewQ06
	
	@RequestMapping(value="Q08.do", method=RequestMethod.GET)
	public String viewQ08() {
		
		return "CH02/Q08";
	}//viewQ06
	
	@RequestMapping(value="info/animal.do", method=RequestMethod.GET)
	public String viewInfoAnimal() {
		
		return "CH02/info_animal";
	}//viewInfoAnimal
	
	@RequestMapping(value="info/furniture.do", method=RequestMethod.GET)
	public String viewInfoFurniture() {
		
		return "CH02/info_furniture";
	}//viewInfoFurniture
	
	@RequestMapping(value="info/person.do", method=RequestMethod.GET)
	public String viewInfoPerson() {
		
		return "CH02/info_person";
	}//viewInfoPerson
	
	@RequestMapping(value="info/plant.do", method=RequestMethod.GET)
	public String viewInfoPlant() {
		
		return "CH02/info_plant";
	}//viewInfoPlant
	
}//class
