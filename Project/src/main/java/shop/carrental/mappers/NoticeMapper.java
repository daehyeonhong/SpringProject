package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;
import shop.carrental.domain.NoticeVO;

public interface NoticeMapper {

	public int total(Criteria criteria);

	public List<NoticeVO> list(Criteria criteria);

	public NoticeVO read(Long seq);

	public void register(NoticeDTO dto);

	public void addCount(Long seq);

}