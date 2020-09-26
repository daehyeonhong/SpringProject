package shop.carrental.mappers;

import java.util.List;

import shop.carrental.domain.AppointDTO;
import shop.carrental.domain.BranchDTO;

public interface RentalMapper {

	List<BranchDTO> listBranch();

	int registerAppoint(AppointDTO dto);

	AppointDTO getAppoint(Long appoint_seq);

}