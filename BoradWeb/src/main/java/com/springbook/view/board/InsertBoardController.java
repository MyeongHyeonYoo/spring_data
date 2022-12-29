package com.springbook.view.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;

@Controller
public class InsertBoardController {

	@RequestMapping(value="/insertBoard.do")
	public String insertBoarad(BoardVO vo, BoardDAO boardDAO) throws Exception {
		boardDAO.insertBoard(vo);
		return "getBoaardList.do";
	}
}
