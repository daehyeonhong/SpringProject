package shop.carrental.service;

import java.util.List;
import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.AnswerDTO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.mappers.TicketMapper;

@Log4j
@AllArgsConstructor
@Service
public class TicketServiceImpl implements TicketService {

	private TicketMapper ticketMapper;

	@Override
	public InquiryDTO getTicketPage(Long inquiry_seq, Criteria cri) {
		log.info("ServiceImpl getTicketPage...");
		return ticketMapper.getTicketPage(inquiry_seq);
	}

	@Override
	public List<InquiryDTO> getTicketListWithPaging(Criteria cri) {
		log.info("ServiceImpl getTicketListWithPaging...");
		return ticketMapper.getTicketListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("ServiceImpl getTotal...");
		return ticketMapper.getTotalCount(cri);
	}

	@Override
	public void replyTicket(AnswerDTO dto, InquiryDTO inquiryDto) {
		log.info("ServiceImpl replyTicket...");
		ticketMapper.replyTicket(dto);
		ticketMapper.updateTicketStatus(inquiryDto);
	}

}