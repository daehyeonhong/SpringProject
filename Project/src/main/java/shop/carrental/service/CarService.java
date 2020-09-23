package shop.carrental.service;

import java.util.List;

import shop.carrental.domain.CarDTO;
import shop.carrental.domain.ManufacturerDTO;
import shop.carrental.domain.SegmentDTO;

public interface CarService {

	public List<ManufacturerDTO> listManufacturer();

	public List<SegmentDTO> listSegment();

	public List<CarDTO> listCar(int manufacturer_seq, int segment_seq);

}