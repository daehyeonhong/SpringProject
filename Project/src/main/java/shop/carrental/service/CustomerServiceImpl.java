package shop.carrental.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;
import shop.carrental.domain.PageVO;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.mappers.NoticeMapper;
import shop.carrental.mappers.FaqMapper;
import shop.carrental.mappers.GeneralMapper;

@Log4j
@Service
@AllArgsConstructor
public class CustomerServiceImpl implements CustomerService {

	private NoticeMapper noticeMapper;
	private GeneralMapper generalInquiryMapper;
	private FaqMapper faqMapper;

	/* NoticeMapper */
	@Transactional
	@Override
	public void readNotice(Long seq, Criteria criteria, Model model) {
		noticeMapper.addCount(seq);
		model.addAttribute("pageMaker", new PageVO(criteria, noticeMapper.total(criteria)));
		model.addAttribute("notice", noticeMapper.read(seq));
	}

	@Override
	public void listNotice(Criteria criteria, Model model) {
		log.info("listNotice");

		model.addAttribute("noticeList", noticeMapper.list(criteria));

		int total = noticeMapper.total(criteria);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageVO(criteria, total));
	}

	@Override
	public int countNotice(Criteria criteria) {
		log.info("countNotice");

		return noticeMapper.total(criteria);
	}

	@Override
	public void registerNotice(NoticeDTO dto, RedirectAttributes redirectAttributes) {
		log.info("registerNotice" + dto);

		noticeMapper.register(dto);
		redirectAttributes.addFlashAttribute("result", dto.getNotice_seq());
	}

	@Override
	public void registerInquiry(InquiryDTO dto, RedirectAttributes redirectAttributes) {
		log.info("registerGeneralInquiry" + dto);

		generalInquiryMapper.registerInquiry(dto);
		redirectAttributes.addFlashAttribute("target", "general");
	}

	@Override
	public void listFaq(String type, Model model) {
		log.info("listFaq" + type);

		model.addAttribute("faqList", faqMapper.list(type));
	}

}
