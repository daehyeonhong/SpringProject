package shop.carrental.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import shop.carrental.domain.Criteria;
import shop.carrental.domain.TicketVO;

public interface TicketMapper {

	List<TicketVO> getTicketList();

	TicketVO getTicketPage(Long tno);

	List<TicketVO> getTicketListWithPaging(Criteria cri);

	int getTotalCount(Criteria cri);

	// 댓글 갯수 수정
	public void updateReplyCnt(@Param("tno") Long tno, @Param("amount") int amount);
}