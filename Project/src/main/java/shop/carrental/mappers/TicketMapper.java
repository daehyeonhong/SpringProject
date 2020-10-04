package shop.carrental.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import shop.carrental.domain.AnswerDTO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.domain.TicketVO;

public interface TicketMapper {

	InquiryDTO getTicketPage(Long inquiry_seq);

	List<InquiryDTO> getTicketListWithPaging(Criteria cri);

	int getTotalCount(Criteria cri);

	void replyTicket(AnswerDTO dto);

	void updateTicketStatus(InquiryDTO inquiryDto);
}