package shop.carrental.service;

import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;
import shop.carrental.domain.RentalInquiryDTO;
import shop.carrental.domain.CustomerInquiryDTO;

public interface CustomerService {

	public int countNotice(Criteria criteria);

	public void listNotice(Criteria criteria, Model model);

	public void readNotice(Long seq, Criteria criteria, Model model);

	public void registerNotice(NoticeDTO dto, RedirectAttributes redirectAttributes);

	public void registerGeneralInquiry(CustomerInquiryDTO dto, RedirectAttributes redirectAttributes);

	public void registerRentalInquiry(RentalInquiryDTO dto, RedirectAttributes redirectAttributes);

	public void listFaq(int type, Model model);

}