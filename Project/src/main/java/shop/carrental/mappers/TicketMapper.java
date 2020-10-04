package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.AnswerDTO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.InquiryDTO;

public interface TicketMapper {

	InquiryDTO getTicketPage(Long inquiry_seq);

	List<InquiryDTO> getTicketListWithPaging(Criteria cri);

	int getTotalCount(Criteria cri);

	void replyTicket(AnswerDTO dto);

	void updateTicketStatus(InquiryDTO inquiryDto);
}