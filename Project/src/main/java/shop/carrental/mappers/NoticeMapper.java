package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;

public interface NoticeMapper {

	public int total(Criteria criteria);

	public List<NoticeDTO> list(Criteria criteria);

	public NoticeDTO read(Long seq);

	public void register(NoticeDTO dto);

	public void addCount(Long seq);

}