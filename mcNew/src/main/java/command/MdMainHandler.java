package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.PromotionDTO;
import domain.StoreLocDTO;
import service.MainBannerService;
import service.PrmtService;
import service.StoreLocService;

public class MdMainHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("do_get호출 MdMainHandler");
		/*
		 * StoreLocService storeLocService = StoreLocService.getInstance();
		 * 
		 * List<StoreLocDTO> SsList = storeLocService.selectStore();
		 * 
		 * request.setAttribute("SsList", SsList);
		 * System.out.println(">SsList 갯수"+SsList.size());
		 */
		
		
		return "/md/mdmain.jsp";

	}


}
