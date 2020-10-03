package shop.carrental.service;

import java.util.List;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.AppointDTO;
import shop.carrental.domain.AppointVO;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.InsuranceDTO;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;

public interface RentalService {

	public Long registerAppoint(AppointDTO dto, RedirectAttributes redirectAttributes);

	public BranchDTO getBranch(Long branch_seq);

	public AppointVO getAppointInfo(AppointDTO dto);

	public BranchDTO getAppoint(Long appoint_seq);

	public Long getLongnextseq();

	public List<BranchDTO> listBranch();

	public int getPeriod(ReserveVO vo);

	public List<InsuranceDTO> listInsurance();

	public Long getReserveNextSeq();

	public ReserveVO registerReserve(ReserveDTO dto);

	public ReserveVO reserveAmount(Long sc_seq, Long insurance_seq, int period);

}