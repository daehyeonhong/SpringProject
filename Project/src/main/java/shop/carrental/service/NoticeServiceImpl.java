package shop.carrental.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.PageVO;
import shop.carrental.mappers.NoticeMapper;

@Log4j
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

	private NoticeMapper noticeMapper;

	@Override
	public void read(Long notice_seq, Criteria criteria, Model model) {
		model.addAttribute("pageMaker", new PageVO(criteria, noticeMapper.total(criteria)));
		model.addAttribute("notice", noticeMapper.read(notice_seq));
	}

	@Override
	public void list(Criteria criteria, Model model) {
		log.info("getNoticeListWithPaging");

		model.addAttribute("noticeList", noticeMapper.list(criteria));

		int total = noticeMapper.total(criteria);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageVO(criteria, total));

	}

	@Override
	public int total(Criteria criteria) {
		log.info("getTotal");

		return noticeMapper.total(criteria);
	}

}
