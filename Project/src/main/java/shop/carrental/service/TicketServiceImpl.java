package shop.carrental.service;

import java.util.List;
import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.TicketVO;
import shop.carrental.mappers.TicketMapper;

@Log4j
@AllArgsConstructor
@Service
public class TicketServiceImpl implements TicketService {

	private TicketMapper mapper;

	@Override
	public List<TicketVO> getTicketList() {
		log.info("ServiceImpl getTicketList...");
		return mapper.getTicketList();
	}

	@Override
	public TicketVO getTicketPage(Long tno) {
		log.info("ServiceImpl getTicketPage...");
		return mapper.getTicketPage(tno);
	}

	@Override
	public List<TicketVO> getTicketListWithPaging(Criteria cri) {
		log.info("ServiceImpl getTicketListWithPaging...");
		return mapper.getTicketListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("ServiceImpl getTotal...");
		return mapper.getTotalCount(cri);
	}
}