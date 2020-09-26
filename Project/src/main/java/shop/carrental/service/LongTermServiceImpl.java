package shop.carrental.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.mappers.CarMapper;
import shop.carrental.mappers.RentalMapper;

@Log4j
@Service
@AllArgsConstructor
public class LongTermServiceImpl implements LongTermService {

	private RentalMapper rentalMapper;
	private CarMapper carMapper;

	@Override
	public void list(Model model) {
		log.info("list");

		model.addAttribute("mfgcoList", carMapper.listMfgco());
		model.addAttribute("segmentList", carMapper.listSegment());
	}

	@Override
	public void detail(Long trim_seq, Model model) {
		model.addAttribute("car", carMapper.detailTrim(trim_seq));
		model.addAttribute("branchList", rentalMapper.listBranch());
	}

}