package shop.carrental.customerService.mapper;

import java.util.List;
import shop.carrental.customerService.domain.NoticeDTO;

public interface NoticeMapper {

	public List<NoticeDTO> getNoticeList();

	public void insert(NoticeDTO dto);

	public NoticeDTO read(Long seq);

	public int delete(Long seq);

}