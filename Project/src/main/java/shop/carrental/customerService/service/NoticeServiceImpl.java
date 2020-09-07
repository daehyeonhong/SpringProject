package shop.carrental.customerService.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import shop.carrental.customerService.domain.NoticeDAO;
import shop.carrental.customerService.domain.NoticeDTO;

public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public List<NoticeDTO> getNoticeList(NoticeDTO dto) {
		return noticeDAO.getNoticeList(dto);
	}

	@Override
	public NoticeDTO getNotice(int seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalRecord() {
		// TODO Auto-generated method stub
		return 0;
	}

}
