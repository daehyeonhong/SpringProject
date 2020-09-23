package shop.carrental.service;

import java.util.List;

import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.CarDTO;
import shop.carrental.domain.ManufacturerDTO;
import shop.carrental.domain.SegmentDTO;
import shop.carrental.mappers.CarMapper;

@Log4j
@Service
@AllArgsConstructor
public class CarServiceImpl implements CarService {

	private CarMapper carMapper;

	@Override
	public List<ManufacturerDTO> listManufacturer() {
		log.info("ListManufacturer...::");

		return carMapper.listManufacturer();
	}

	@Override
	public List<SegmentDTO> listSegment() {
		log.info("ListSegment...::");
		return carMapper.listSegment();
	}

	@Override
	public List<CarDTO> listCar(int manufacturer_seq, int segment_seq) {
		log.info("ListCar...::" + manufacturer_seq + "::" + segment_seq);
		return carMapper.listCar(manufacturer_seq, segment_seq);
	}

}