package shop.carrental.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;
import shop.carrental.domain.ShortCarVO;
import shop.carrental.mappers.CarMapper;
import shop.carrental.mappers.RentalMapper;
import shop.carrental.mappers.ReserveMapper;

@Log4j
@Service
@AllArgsConstructor
public class ShortTermServiceImpl implements ShortTermService {

	private CarMapper carMapper;
	private RentalMapper rentalMapper;
	/* private ReserveMapper reserveMapper; */

	@Transactional
	@Override
	public ShortCarVO getCarInfo(Long sc_seq) {
		return carMapper.getCarInfo(sc_seq);
	}

	@Override
	public void registerReserve(ReserveDTO dto) {
		rentalMapper.registerReserve(dto);
	}

	/*
	 * @Override public ReserveVO getReserveInfo(ReserveVO vo) { return
	 * reserveMapper.getReserveInfo(vo); }
	 */

	@Override
	public void list(Model model) {
		log.info("list");

		model.addAttribute("mfgcoList", carMapper.listMfgco());
		model.addAttribute("segmentList", carMapper.listSegment());
		model.addAttribute("branchList", rentalMapper.listBranch());
	}

}