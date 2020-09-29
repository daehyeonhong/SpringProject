package shop.carrental.mappers;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import shop.carrental.domain.CarVO;
import shop.carrental.domain.MfgcoDTO;
import shop.carrental.domain.SegmentDTO;
import shop.carrental.domain.ShortCarDTO;
import shop.carrental.domain.ShortCarVO;

public interface CarMapper {

	public List<MfgcoDTO> listMfgco();

	public List<SegmentDTO> listSegment();

	public List<CarVO> listCar(@Param("mfgco_seq") Long mfgco_seq, @Param("segment_seq") Long segment_seq);

	public int registerShortCar(ShortCarDTO dto);

	public Object detailTrim(Long trim_seq);

	public List<ShortCarVO> listShortCar(@Param("start_date") Date start_date, @Param("end_date") Date end_date,
			@Param("branch_seq") Long branch_seq);

	public ShortCarVO getCarInfo(Long sc_seq);

}