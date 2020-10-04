package shop.carrental.service;

import java.util.List;

import org.springframework.ui.Model;

import shop.carrental.domain.AnswerDTO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.domain.TicketVO;

public interface TicketService {

	public InquiryDTO getTicketPage(Long inquiry_seq, Criteria cri);

	public List<InquiryDTO> getTicketListWithPaging(Criteria cri);

	public int getTotal(Criteria cri);

	public void replyTicket(AnswerDTO dto,InquiryDTO inquiryDto);
}