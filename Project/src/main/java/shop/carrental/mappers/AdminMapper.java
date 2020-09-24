package shop.carrental.mappers;

import shop.carrental.domain.AdminVO;

public interface AdminMapper {

	public void register(AdminVO vo);

	public AdminVO getAdmin(AdminVO vo);
}