package shop.carrental.service;

import org.springframework.ui.Model;
import shop.carrental.domain.ReserveDTO;
/*import shop.carrental.domain.ReserveVO;*/
import shop.carrental.domain.ShortCarVO;

public interface ShortTermService {

	public void registerReserve(ReserveDTO dto);

	/* public ReserveVO getReserveInfo(ReserveVO vo); */

	public ShortCarVO getCarInfo(Long car_seq);

	public void list(Model model);

}