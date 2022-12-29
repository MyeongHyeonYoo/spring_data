package com.springbook.view.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;

@Controller
public class GetBoardContrller {
	
	@RequestMapping("/getBoard.do")
	public ModelAndView handleRequest(BoardVO vo, BoardDAO boardDAO, ModelAndView mav) throws Exception {
		mav.addObject("board", boardDAO.getBoardList(vo)); // Model 정보 저장
		mav.setViewName("getBoard.jsp"); // View 정보 저장
		return mav;
	}
}
