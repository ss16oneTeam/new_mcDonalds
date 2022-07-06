package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.MemberDTO;
import domain.PromotionDTO;
import domain.StoreLocDTO;
import service.MainBannerService;
import service.MemberService;
import service.PrmtService;
import service.StoreLocService;

public class MdMainLogonHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("do_get호출 MdMainLogonHandler");
		MemberService memberService = MemberService.getInstance();
		
		
		String userId = request.getParameter("userName");
		String userPwd = request.getParameter("passWord");
		
		MemberDTO memberDTO = memberService.loginMember(userId,userPwd);
		 
		
		
		request.setAttribute("Member", memberDTO);
		
		System.out.println(">memberDTO 갯수"+memberDTO.getAdr_code());
		 
		
		return "/md/mdmain.jsp";

	}


}
