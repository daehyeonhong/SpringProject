package shop.carrental.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import shop.carrental.domain.CarDTO;
import shop.carrental.domain.ManufacturerDTO;
import shop.carrental.domain.SegmentDTO;

public interface CarMapper {

	public List<ManufacturerDTO> listManufacturer();

	public List<SegmentDTO> listSegment();

	public List<CarDTO> listCar(@Param("manufacturer_seq") int manufacturer_seq, @Param("segment_seq") int segment_seq);

}