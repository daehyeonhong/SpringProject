package shop.carrental.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.AdminVO;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.PageVO;
import shop.carrental.domain.ShortCarDTO;
import shop.carrental.mappers.AdminMapper;
import shop.carrental.mappers.CarMapper;

@Log4j
@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {

	private CarMapper carMapper;
	private AdminMapper adminMapper;

	@Override
	public void register(AdminVO vo) {
		log.info("ServiceImpl register...");
		adminMapper.register(vo);
	}

	@Override
	public AdminVO getAdmin(AdminVO vo) {
		log.info("ServiceImpl getAdmin...");
		return adminMapper.getAdmin(vo);
	}
	
	@Override
	public void registerShortCar(ShortCarDTO dto) {
		log.info("Admin==>RegisterShortCar");
		carMapper.registerShortCar(dto);
	}

	@Override
	public List<BranchDTO> getBranchList(Criteria cri) {
		log.info("ServiceImpl getBranchList...");
		return adminMapper.getBranchList(cri);
	}

	@Override
	public int getTotalBranchCount(Criteria cri) {
		log.info("ServiceImpl getTotalBranchCount...");
		return adminMapper.getTotalBranchCount(cri);
	}

	@Override
	public void registerBranch(BranchDTO dto) {
		log.info("ServiceImpl registerBranch...");
		adminMapper.registerBranch(dto);
	}
}