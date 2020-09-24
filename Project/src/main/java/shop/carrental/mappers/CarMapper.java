package shop.carrental.mappers;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import shop.carrental.domain.CarDTO;
import shop.carrental.domain.MfgcoDTO;
import shop.carrental.domain.SegmentDTO;
import shop.carrental.domain.ShortCarDTO;

public interface CarMapper {

	public List<MfgcoDTO> listMfgco();

	public List<SegmentDTO> listSegment();

	public List<CarDTO> listCar(@Param("mfgco_seq") int mfgco_seq, @Param("segment_seq") int segment_seq);

	public int registerShortCar(ShortCarDTO dto);

}