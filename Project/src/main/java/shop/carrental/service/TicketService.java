package shop.carrental.service;

import java.util.List;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.TicketVO;

public interface TicketService {

	public List<TicketVO> getTicketList(); // no longer used

	public TicketVO getTicketPage(Long tno);

	public List<TicketVO> getTicketListWithPaging(Criteria cri);

	public int getTotal(Criteria cri);

}