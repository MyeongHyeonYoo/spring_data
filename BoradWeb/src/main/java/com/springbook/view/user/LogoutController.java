package com.springbook.view.user;

import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	
	@RequestMapping("/logout.do")
	public String logut(HttpSession session) {
		session.invalidate();
		return "login.jsp";
	}

}
