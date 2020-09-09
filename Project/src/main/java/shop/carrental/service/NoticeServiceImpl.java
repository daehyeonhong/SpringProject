package shop.carrental.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.NoticeDTO;
import shop.carrental.mappers.NoticeMapper;

@Log4j
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

	private final int LISTCOUNT = 10;
	private final int FIRST = 1;

	private NoticeMapper noticeMapper;

	@Override
	public MultiValueMap<String, Object> getNoticeList(Integer pageNumber) {
		MultiValueMap<String, Object> map = new LinkedMultiValueMap<String, Object>();
		List<NoticeDTO> noticeList = new ArrayList<NoticeDTO>();

		log.info("getNoticeList()");
		int limit = LISTCOUNT, totalRecord = noticeMapper.getListCount();
		noticeList = noticeMapper.getNoticeList();
		int totalPage = totalRecord / limit;

		Math.floor(totalPage);
		totalPage = (totalRecord % limit == 0) ? totalPage : (totalPage + 1);

		int pageLength = LISTCOUNT,
				currentBlock = (pageNumber % pageLength == 0) ? (pageNumber / pageLength)
						: (pageNumber / pageLength + 1),
				startPage = FIRST + (currentBlock - 1) * pageLength, endPage = startPage + pageLength - 1,
				totalSegment = (totalRecord % (limit * pageLength) == 0) ? (totalRecord / (limit * pageLength))
						: (totalRecord / (limit * pageLength) + 1);
		endPage = (endPage > totalPage) ? totalPage : endPage;

		map.add("noticeList", noticeList);
		map.add("totalPage", totalPage);
		map.add("totalRecord", totalRecord);
		map.add("currentBlock", currentBlock);
		map.add("startPage", startPage);
		map.add("endPage", endPage);
		map.add("totalSegment", totalSegment);
		return map;
	}

	@Override
	public NoticeDTO getNoticeDetail(Long seq) {
		log.info("getNoticeDetail()");

		return noticeMapper.read(seq);
	}

	@Override
	public List<NoticeDTO> getNoticeSearchList(HashMap<String, String> map) {
		log.info("getNoticeSearchList()");
		return noticeMapper.search(map);
	}

}
