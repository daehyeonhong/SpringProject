package shop.carrental.service;

import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;

public interface NoticeService {

	public int total(Criteria criteria);

	public void list(Criteria criteria, Model model);

	public void read(Long seq, Criteria criteria, Model model);

	public void register(NoticeDTO dto, RedirectAttributes redirectAttributes);

}