package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;

public interface NoticeMapper {

	public int getTotal(Criteria criteria);

	public List<NoticeDTO> getNoticeList(Criteria criteria);

	public NoticeDTO read(Long notice_seq);

}