package shop.carrental.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.CarVO;
import shop.carrental.domain.InsuranceDTO;
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
	private ReserveMapper reserveMapper;

	@Transactional
	@Override
	public ShortCarVO getCarInfo(Long sc_seq) {
		return carMapper.getCarInfo(sc_seq);
	}

	@Override
	public void registerReservation(ReserveDTO dto) {
	}

	@Override
	public List<ReserveDTO> getReservationList(ReserveDTO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReserveVO getReservationInfo(ReserveVO vo) {
		return reserveMapper.getReservationInfo(vo);
	}

	@Override
	public ReserveDTO getReservationInfo(CarVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void list(Model model) {
		log.info("list");

		model.addAttribute("mfgcoList", carMapper.listMfgco());
		model.addAttribute("segmentList", carMapper.listSegment());
		model.addAttribute("branchList", rentalMapper.listBranch());
	}

	@Override
	public void shortTerm(ReserveVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void shortTerm_j(ReserveVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<BranchDTO> listBranch() {
		return rentalMapper.listBranch();
	}

	@Override
	public List<InsuranceDTO> listInsurance() {
		return reserveMapper.listInsurance();
	}

}