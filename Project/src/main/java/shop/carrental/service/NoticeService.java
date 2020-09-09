package shop.carrental.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.util.MultiValueMap;

import shop.carrental.domain.NoticeDTO;

public interface NoticeService {

	public MultiValueMap<String, Object> getNoticeList(Integer pageNumber);

	public NoticeDTO getNoticeDetail(Long seq);

	List<NoticeDTO> getNoticeSearchList(HashMap<String, String> map);

}