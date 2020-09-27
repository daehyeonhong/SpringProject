package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.AppointDTO;
import shop.carrental.domain.BranchDTO;

public interface RentalMapper {

	public List<BranchDTO> listBranch();

	public int registerAppoint(AppointDTO dto);

	public AppointDTO getAppoint(Long appoint_seq);

	public BranchDTO getBranch(Long branch_seq);

}