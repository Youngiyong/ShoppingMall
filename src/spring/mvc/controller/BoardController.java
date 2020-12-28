package spring.mvc.controller;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.domain.BoardVO;
import spring.mvc.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

		//
		@RequestMapping("/board/{step}.do")
		public String viewPage(@PathVariable String step) {
			return "/board/"+step;
		}
	
		// 글 목록 검색
		@RequestMapping("board/getBoardList.do")
		public void getBoardList(BoardVO vo, Model model) {
			System.out.println("getBoardList.do 요청");
			model.addAttribute("boardList", boardService.getBoardList(vo));
			// return "views/getBoardList.jsp"; // View 이름 리턴
		}
	
		// 글 입력
		@RequestMapping("board/saveBoard.do")
		public String insertBoard(BoardVO vo) {
			System.out.println("/?");
			boardService.insertBoard(vo);
		   return "redirect:/board/getBoardList.do";
		}

		// 글 수정
		@RequestMapping("board/updateBoard.do")
		public String updateBoard(@ModelAttribute("board") BoardVO vo) {
			boardService.updateBoard(vo);
			return "redirect:/board/getBoardList.do";
		}

		// 글 삭제
		@RequestMapping("board/deleteBoard.do")
		public String deleteBoard(BoardVO vo) {
			boardService.deleteBoard(vo);
			return "redirect:/board/getBoardList.do";
		}

		// 글 상세 조회
		@RequestMapping("board/getBoard.do")
		public void getBoard(BoardVO vo, Model model) {
			model.addAttribute("board", boardService.getBoard(vo)); // Model 정보 저장			
	
		}

	}
