package shop.carrental.service;

import org.springframework.ui.Model;
import shop.carrental.domain.Criteria;

public interface NoticeService {

	public int total(Criteria criteria);

	public void list(Criteria criteria, Model model);

	public void read(Long notice_seq, Criteria criteria, Model model);

}