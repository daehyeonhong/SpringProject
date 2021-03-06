package shop.carrental.service;

import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.AmountVO;
import shop.carrental.domain.AppointDTO;
import shop.carrental.domain.AppointVO;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.InsuranceDTO;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;
import shop.carrental.domain.ShortCarVO;
import shop.carrental.mappers.CarMapper;
import shop.carrental.mappers.RentalMapper;

@Log4j
@Service
@AllArgsConstructor
public class RentalServiceImpl implements RentalService {

	private RentalMapper rentalMapper;
	private CarMapper carMapper;

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
	public Long getLongnextseq() {
		return rentalMapper.getNextSeq();
	}

	@Override
	public List<BranchDTO> listBranch() {
		return rentalMapper.listBranch();
	}

	@Override
	public int getPeriod(ReserveVO vo) {
		return rentalMapper.getPeriod(vo);
	}

	@Override
	public List<InsuranceDTO> listInsurance() {
		return rentalMapper.listInsurance();
	}

	@Override
	public Long getReserveNextSeq() {
		return rentalMapper.getNextReserveSeq();
	}

	@Override
	public BranchDTO getAppoint(Long appoint_seq) {
		return null;
	}

	@Transactional
	@Override
	public ReserveVO registerReserve(ReserveDTO dto) {
		int schedule = rentalMapper.checkSchedule(dto);
		if (schedule == 1) {
			Long reserve_seq = rentalMapper.getNextReserveSeq();
			dto.setReserve_seq(reserve_seq);
			rentalMapper.registerReserve(dto);
			return rentalMapper.getReserve(reserve_seq);
		}
		return null;
	}

	@Override
	public ReserveVO reserveAmount(Long sc_seq, Long insurance_seq, int period) {
		ShortCarVO car = carMapper.getCarInfo(sc_seq);
		InsuranceDTO insurance = rentalMapper.getInsurance(insurance_seq);
		ReserveVO reserve = new ReserveVO();
		reserve.setSc_seq(sc_seq);
		reserve.setAmount(new AmountVO(car.getNomal_price(), insurance.getFare(), period));
		return reserve;
	}

	@Override
	public ReserveVO getReserve(Long reserve_seq) {
		log.info("getReserve");
		return rentalMapper.getReserve(reserve_seq);
	}

}