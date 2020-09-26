package shop.carrental.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.mappers.CarMapper;
import shop.carrental.mappers.RentalMapper;

@Log4j
@Service
@AllArgsConstructor
public class ShortTermServiceImpl implements ShortTermService {
	private CarMapper carMapper;
	private RentalMapper rentalMapper;

	@Transactional
	@Override
	public void list(Model model) {
		log.info("list");

		model.addAttribute("mfgcoList", carMapper.listMfgco());
		model.addAttribute("segmentList", carMapper.listSegment());
		model.addAttribute("branchList", rentalMapper.listBranch());
	}

}