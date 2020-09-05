package shop.carrental.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Select;
import shop.carrental.customerService.domain.NoticeDTO;

public interface NoticeMapper {

	@Select("SELECT*FROM notice ORDER BY seq DESC")
	public List<NoticeDTO> getNoticeList();

	@Select("SELECT*FROM notice WHERE seq=#{seq}")
	public NoticeDTO getNotice(int seq);

	@Select("SELECT COUNT(*)FROM notice")
	public int getTotalRecord();

}