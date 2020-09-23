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
	public List<ManufacturerDTO> listManufacturer(int manufacturer_seq) {
		log.info("ListManufacturer...::" + manufacturer_seq);

		return carMapper.listManufacturer(manufacturer_seq);
	}

	@Override
	public List<SegmentDTO> listSegment(int segment_seq) {
		log.info("ListSegment...::" + segment_seq);
		return carMapper.listSegment(segment_seq);
	}

	@Override
	public List<CarDTO> listCar(int manufacturer_seq, int segment_seq) {
		log.info("ListCar...::" + manufacturer_seq + "::" + segment_seq);
		return carMapper.listCar(manufacturer_seq, segment_seq);
	}

}