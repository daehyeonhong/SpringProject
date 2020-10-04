package shop.carrental.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.AdminVO;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.ShortCarDTO;

public interface AdminService {

	public void register(AdminVO vo);

	public AdminVO getAdmin(AdminVO vo);
	
	public void registerShortCar(ShortCarDTO dto);

	public List<BranchDTO> getBranchList(Criteria cri);
	
	public int getTotalBranchCount(Criteria cri);

	public void registerBranch(BranchDTO dto);
}