package shop.carrental.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.CarVO;
import shop.carrental.domain.TrimDTO;
import shop.carrental.mappers.CarMapper;
import shop.carrental.mappers.RentalMapper;

@Log4j
@Service
@AllArgsConstructor
public class LongTermServiceImpl implements LongTermService {

	private RentalMapper rentalMapper;
	private CarMapper carMapper;

	@Override
	public CarVO detail(Long trim_seq) {
		return carMapper.detailTrim(trim_seq);
	}

	@Override
	public void list() {
		// TODO Auto-generated method stub

	}

}