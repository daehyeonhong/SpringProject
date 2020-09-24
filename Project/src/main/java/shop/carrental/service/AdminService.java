package shop.carrental.service;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.AdminVO;
import shop.carrental.domain.ShortCarDTO;

public interface AdminService {

	void registerShortCar(ShortCarDTO dto, RedirectAttributes redirectAttributes);

	public void register(AdminVO vo);

	public AdminVO getAdmin(AdminVO vo);
}