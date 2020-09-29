package shop.carrental.service;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.AppointDTO;
import shop.carrental.domain.AppointVO;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;

public interface RentalService {

	public Long registerAppoint(AppointDTO dto, RedirectAttributes redirectAttributes);

	public BranchDTO getBranch(Long branch_seq);

	public AppointVO getAppointInfo(AppointDTO dto);

	public BranchDTO getAppoint(Long appoint_seq);

	public Long getLongnextseq();

	public void registerReserve(ReserveDTO dto);

}