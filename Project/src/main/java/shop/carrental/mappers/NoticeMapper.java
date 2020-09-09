package shop.carrental.mappers;

import java.util.HashMap;
import java.util.List;
import shop.carrental.domain.NoticeDTO;

public interface NoticeMapper {

	public List<NoticeDTO> getNoticeList();

	public void insert(NoticeDTO dto);

	public NoticeDTO read(Long seq);

	public int delete(Long seq);

	public List<NoticeDTO> search(HashMap<String, String> map);

	public int getListCount();

}