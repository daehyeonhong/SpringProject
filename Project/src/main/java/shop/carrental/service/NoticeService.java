package shop.carrental.service;

import java.util.HashMap;
import java.util.List;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;

public interface NoticeService {

	public int getTotal(Criteria criteria);

	public List<NoticeDTO> getNoticeList(Criteria criteria);

	public NoticeDTO read(Long seq);

	List<NoticeDTO> search(HashMap<String, String> map);

}