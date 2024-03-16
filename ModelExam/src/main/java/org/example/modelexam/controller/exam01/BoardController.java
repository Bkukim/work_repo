package org.example.modelexam.controller.exam01;

import org.example.modelexam.model.Board;
import org.example.modelexam.service.exam01.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

/**
 * packageName : org.example.modelexam.controller
 * fileName : BoardController
 * author : PC
 * date : 2024-03-15
 * description :
 * 요약 :
 * <p>
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2024-03-15         PC          최초 생성
 */
@Controller
@RequestMapping("/exam01")
public class BoardController {

    private BoardService boardService;

    @Autowired
    public BoardController(BoardService boardService) {
        this.boardService = boardService;
    }

    @GetMapping("/board")
    public String getBoardAll(Model model){
        List<Board> list = boardService.findAll();
        model.addAttribute("list", list);
        return "/exam01/board/board_all.jsp";
    }

    @GetMapping("/board/{id}")
    public String getBoardById(Model model, @PathVariable int id){
        Board board = boardService.findById(id);
        model.addAttribute("board", board);
        return "/exam01/board/board_by_eno.jsp";
    }

    @GetMapping("/board/addition")
    public String addBoard(Model model){
        return "/exam01/board/add_board.jsp";
    }

    @PostMapping("/board/add")
    public RedirectView saveBoard(@ModelAttribute Board board){
        boardService.insert(board);
        return new RedirectView("/exam01/board");
    }

    @GetMapping("/board/edition/{id}")
    public String editBoard( @PathVariable int id, Model model){
        Board board = boardService.findById(id);
        model.addAttribute("board", board);
        return "/exam01/board/update_board.jsp";
    }
    @PutMapping("/board/edit/{id}")
    public RedirectView updateBoard(@PathVariable int id, @ModelAttribute Board board){
        boardService.insert(board);
        return new RedirectView("/exam01/board");
    }

    @DeleteMapping("/board/delete/{id}")
    public RedirectView deleteBoard(@PathVariable int id ){
        boardService.delete(id);
        return new RedirectView("/exam01/board");
    }
}
