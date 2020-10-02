package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.AppointDTO;
import shop.carrental.domain.AppointVO;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.InsuranceDTO;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;

public interface RentalMapper {

	public List<BranchDTO> listBranch();

	public Long registerAppoint(AppointDTO dto);

	public AppointDTO getAppoint(String Users_id);

	public BranchDTO getBranch(Long branch_seq);

	public AppointVO getAppointInfo(AppointDTO dto);

	public Long getNextSeq();

	public void registerReserve(ReserveDTO dto);

	public int getPeriod(ReserveVO vo);

	public List<InsuranceDTO> listInsurance();

	public Long getNextReserveSeq();

	public ReserveVO getReserve(Long reserve_seq);

	public InsuranceDTO getInsurance(Long insurance_seq);

}