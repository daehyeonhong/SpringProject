package shop.carrental.mappers;

import java.util.List;

import shop.carrental.domain.AdminVO;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.Criteria;

public interface AdminMapper {

	public void register(AdminVO vo);

	public AdminVO getAdmin(AdminVO vo);

	public List<BranchDTO> getBranchList(Criteria cri);

	public int getTotalBranchCount(Criteria cri);

	public void registerBranch(BranchDTO dto);
}