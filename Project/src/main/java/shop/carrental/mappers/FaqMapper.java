package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.FaqVO;

public interface FaqMapper {

	public List<FaqVO> list(int type);

}