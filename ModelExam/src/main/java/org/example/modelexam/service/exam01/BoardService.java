package org.example.modelexam.service.exam01;

import org.example.modelexam.dao.BoardDao;
import org.example.modelexam.model.Board;
import org.example.modelexam.model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * packageName : org.example.modelexam.service.exam01
 * fileName : BoardService
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
@Service
public class BoardService {

    private BoardDao boardDao;

    @Autowired
    public BoardService(BoardDao boardDao) {
        this.boardDao = boardDao;
    }

    public List<Board> findAll( ){
        List<Board> list = boardDao.selectAll();
        return list;
    }

    public Board findById(int id){
         Board board= boardDao.selectById(id);
         return board;
    }

    public List<Board> insert(Board board){
        List<Board> boards = null;
        if(board.getId() == null){
            boards = boardDao.insert(board);
        }else{
            boards = boardDao.update(board);
        }
        return boards;
    }


    public boolean delete(int id){
        int count = boardDao.deleteById(id);
        return (count>0)? true : false;
    }
}
