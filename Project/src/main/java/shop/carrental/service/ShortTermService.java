package shop.carrental.service;

import java.util.List;

import org.springframework.ui.Model;

import shop.carrental.domain.CarVO;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;

public interface ShortTermService {

	public List<ReserveDTO> getReservationList(ReserveDTO vo);

	public void registerReservation(ReserveDTO dto);

	public ReserveVO getReservationInfo(ReserveVO vo);

	public ReserveDTO getReservationInfo(CarVO vo);

	public CarVO getCarInfo(Long sc_seq);

	public void list(Model model);

	public void shortTerm(ReserveVO vo);

	public void shortTerm_j(ReserveVO vo);

}