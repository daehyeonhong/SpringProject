package shop.carrental.service;

import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import shop.carrental.domain.CarVO;
import shop.carrental.mappers.CarMapper;

@Service
@AllArgsConstructor
public class LongTermServiceImpl implements LongTermService {

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