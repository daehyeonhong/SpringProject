package shop.carrental.service;

import java.util.List;
import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;
import shop.carrental.mappers.NoticeMapper;

@Log4j
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

	private NoticeMapper noticeMapper;

	@Override
	public NoticeDTO read(Long notice_seq) {
		log.info("getget()");

		return noticeMapper.read(notice_seq);
	}

	@Override
	public List<NoticeDTO> getNoticeList(Criteria criteria) {
		log.info("getNoticeListWithPaging");

		return noticeMapper.getNoticeList(criteria);
	}

	@Override
	public int getTotal(Criteria criteria) {
		log.info("getTotal");

		return noticeMapper.getTotal(criteria);
	}

}
