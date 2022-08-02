package grandcircus.co8.DonutLab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DonutController {
	
	@Autowired
	private DonutService donutService;
	
	@RequestMapping("/")
	public String showIndex(Model model) {
		model.addAttribute("donuts", donutService.getAllDonuts().getResults());
		return "index";
	}
	
	@RequestMapping("/details")
	public String showDetails(@RequestParam int id, Model model) {
		model.addAttribute("donut", donutService.getThatDonut(id));
		return "details";
	}
	
}
