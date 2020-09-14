package shop.carrental.service;

import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeVO;
import shop.carrental.domain.PageVO;
import shop.carrental.mappers.NoticeMapper;

@Log4j
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

	private NoticeMapper noticeMapper;

	@Override
	public void read(Long notice_seq, Criteria criteria, Model model) {
		log.info("getget()");

		int total = noticeMapper.getTotal(criteria);
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		model.addAttribute("notice", noticeMapper.read(notice_seq));
	}

	@Override
	public List<NoticeVO> getNoticeList(Criteria criteria) {
		log.info("getNoticeListWithPaging");

		return noticeMapper.getNoticeList(criteria);
	}

	@Override
	public int getTotal(Criteria criteria) {
		log.info("getTotal");

		return noticeMapper.getTotal(criteria);
	}

}
