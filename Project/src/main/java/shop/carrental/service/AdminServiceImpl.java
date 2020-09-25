package shop.carrental.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.AdminVO;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.domain.ShortCarDTO;
import shop.carrental.mappers.AdminMapper;
import shop.carrental.mappers.CarMapper;
import shop.carrental.mappers.GeneralMapper;

@Log4j
@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {

	private CarMapper carMapper;
	private GeneralMapper generalMapper;
	private AdminMapper mapper;

	@Override
	public void registerShortCar(ShortCarDTO dto, RedirectAttributes redirectAttributes) {
		log.info("Admin==>RegisterShortCar");

		int seq = carMapper.registerShortCar(dto);
		redirectAttributes.addFlashAttribute("result", seq);
	}

	@Override
	public void register(AdminVO vo) {
		log.info("ServiceImpl register...");
		mapper.register(vo);
	}

	@Override
	public AdminVO getAdmin(AdminVO vo) {
		log.info("ServiceImpl getAdmin...");
		return mapper.getAdmin(vo);
	}

	@Override
	public void readInquiry(Long inquiry_seq, Model model) {
		InquiryDTO inquiry = generalMapper.read(inquiry_seq);
		model.addAttribute("inquiry", inquiry);
	}
}