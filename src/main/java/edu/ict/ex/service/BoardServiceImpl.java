package edu.ict.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.ict.ex.mapper.BoardMapper;
import edu.ict.ex.page.Criteria;
import edu.ict.ex.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardServiceImpl implements BoardService {

   @Autowired
   private BoardMapper boardMapper;

   @Override
   public List<BoardVO> getList() {
      log.info("getList()..");

      return boardMapper.getList();
   }

   @Override
   public BoardVO get(int bno) {
      log.info("get()..");

      BoardVO board = new BoardVO();
      board.setBid(bno);

      boardMapper.upHit(board);

      return boardMapper.read(bno);
   }

   @Override
   public void remove(int bno) {
      log.info("remove()..");

      boardMapper.delete(bno);
   }

   @Override
   public void write(String bname, String btitle, String bcontent) {
      log.info("write()..");

      boardMapper.write(bname, btitle, bcontent);
   }

   @Override
   public void modify(int bid, String bname, String btitle, String bcontent) {
      log.info("modify()..");

      boardMapper.modify(bid, bname, btitle, bcontent);
   }

   // 순서있는 기능이 오는 부분 = 비지니스 로직
   @Override
   public void writeReply(BoardVO board) {
      log.info("writeReply()..");
      boardMapper.updateShape(board);
      boardMapper.insertReply(board);
   }

   @Override
   public int upHit(BoardVO board) {
      log.info("upHit()..");

      return boardMapper.upHit(board);
   }
   
   @Override
   public int getTotal() {
      log.info("getTotal()..");

      return boardMapper.getTotalCount();
   }
   
   @Override
   public List<BoardVO> getListWithPaging(Criteria cri) {
      log.info("getListWithPaging()..");

      return boardMapper.getListWithPaging(cri);
   }
}
