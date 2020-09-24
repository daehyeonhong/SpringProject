package shop.carrental.service;

import java.util.List;
import shop.carrental.domain.CarDTO;
import shop.carrental.domain.MfgcoDTO;
import shop.carrental.domain.SegmentDTO;

public interface CarService {

	public List<MfgcoDTO> listMfgco();

	public List<SegmentDTO> listSegment();

	public List<CarDTO> listCar(int mfgco_seq, int segment_seq);

}