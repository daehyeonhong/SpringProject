package shop.carrental.service;

import java.util.List;
import org.springframework.ui.Model;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeVO;

public interface NoticeService {

	public int getTotal(Criteria criteria);

	public List<NoticeVO> getNoticeList(Criteria criteria);

	public void read(Long notice_seq, Criteria criteria, Model model);

}