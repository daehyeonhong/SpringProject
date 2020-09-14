package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeVO;

public interface NoticeMapper {

	public int getTotal(Criteria criteria);

	public List<NoticeVO> getNoticeList(Criteria criteria);

	public NoticeVO read(Long notice_seq);

}