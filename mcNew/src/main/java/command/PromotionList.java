package command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.PromotionDTO;
import service.PrmtService;

public class PromotionList implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("do_get호출 test 박민주");
		PrmtService prmtService = PrmtService.getInstance();
		ArrayList<PromotionDTO> Plist=prmtService.select();
		
		request.setAttribute("Plist", Plist);
		return "/McPromotion/main_bottom.jsp";
	}

}
