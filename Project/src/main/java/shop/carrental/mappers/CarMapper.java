package shop.carrental.mappers;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import shop.carrental.domain.CarVO;
import shop.carrental.domain.MfgcoDTO;
import shop.carrental.domain.SegmentDTO;
import shop.carrental.domain.ShortCarDTO;

public interface CarMapper {

	public List<MfgcoDTO> listMfgco();

	public List<SegmentDTO> listSegment();

	public List<CarVO> listCar(@Param("mfgco_seq") Long mfgco_seq, @Param("segment_name") String segment_name);

	public int registerShortCar(ShortCarDTO dto);

}