package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.FaqDTO;

public interface FaqMapper {

	public List<FaqDTO> list(String type);

}