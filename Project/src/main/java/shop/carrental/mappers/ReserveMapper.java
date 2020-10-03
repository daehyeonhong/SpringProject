package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.InsuranceDTO;
import shop.carrental.domain.ReserveVO;

public interface ReserveMapper {
	public ReserveVO getReserveInfo(ReserveVO vo);

	public List<InsuranceDTO> listInsurance();
}
