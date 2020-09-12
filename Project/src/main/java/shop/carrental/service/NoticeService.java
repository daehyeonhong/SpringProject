package shop.carrental.service;

import java.util.HashMap;
import java.util.List;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;

public interface NoticeService {

	public List<NoticeDTO> getNoticeList(Criteria criteria);

	public int getTotal(Criteria criteria);

	public NoticeDTO getNoticeDetail(Long seq);

	List<NoticeDTO> getNoticeSearchList(HashMap<String, String> map);

}