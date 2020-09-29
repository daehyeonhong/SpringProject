package shop.carrental.service;

import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.CarVO;
import shop.carrental.domain.MfgcoDTO;
import shop.carrental.domain.SegmentDTO;
import shop.carrental.domain.ShortCarDTO;
import shop.carrental.domain.ShortCarVO;
import shop.carrental.mappers.CarMapper;

@Log4j
@Service
@AllArgsConstructor
public class CarServiceImpl implements CarService {

	private CarMapper carMapper;

	@Override
	public List<MfgcoDTO> listMfgco() {
		log.info("ListMfgco::");

		return carMapper.listMfgco();
	}

	@Override
	public List<SegmentDTO> listSegment() {
		log.info("ListSegment::");
		return carMapper.listSegment();
	}

	@Override
	public List<CarVO> listCar(Long mfgco_seq, Long segment_seq) {
		log.info("ListCar::" + mfgco_seq + "::" + segment_seq);
		return carMapper.listCar(mfgco_seq, segment_seq);
	}

	@Override
	public List<ShortCarVO> listShortCar(Date start_date, Date end_date, Long branch_seq) {
		log.info("ListCar::" + start_date + "::" + end_date + "::" + branch_seq);

		return carMapper.listShortCar(start_date, end_date, branch_seq);
	}

	@Override
	public ShortCarVO getDetailCar(Long sc_seq) {

		return carMapper.getCarInfo(sc_seq);
	}

}