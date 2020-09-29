package shop.carrental.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.AppointDTO;
import shop.carrental.domain.AppointVO;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;
import shop.carrental.mappers.RentalMapper;

@Log4j
@Service
@AllArgsConstructor
public class RentalServiceImpl implements RentalService {

	private RentalMapper rentalMapper;

	@Transactional
	@Override
	public Long registerAppoint(AppointDTO dto, RedirectAttributes redirectAttributes) {
		log.info("registerAppoint" + dto);

		return rentalMapper.registerAppoint(dto);
	}

	@Override
	public BranchDTO getBranch(Long branch_seq) {
		log.info("Branch::" + branch_seq);
		return rentalMapper.getBranch(branch_seq);
	}

	@Override
	public AppointVO getAppointInfo(AppointDTO dto) {

		return rentalMapper.getAppointInfo(dto);
	}

	@Override
	public BranchDTO getAppoint(Long appoint_seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long getLongnextseq() {
		// TODO Auto-generated method stub
		return rentalMapper.getNextSeq();
	}

	@Override
	public void registerReserve(ReserveDTO dto) {
		// TODO Auto-generated method stub

	}

	/*
	 * @Override public void registerReserve(ReserveVO vo) {
	 * rentalMapper.registerReserve(dto); }
	 */

}