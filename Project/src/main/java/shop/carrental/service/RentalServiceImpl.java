package shop.carrental.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.AppointDTO;
import shop.carrental.mappers.RentalMapper;

@Log4j
@Service
@AllArgsConstructor
public class RentalServiceImpl implements RentalTermService {

	private RentalMapper rentalMapper;

	@Transactional
	@Override
	public boolean registerAppoint(AppointDTO dto, RedirectAttributes redirectAttributes) {
		log.info("registerAppoint" + dto);

		return rentalMapper.registerAppoint(dto) > 0;
	}

}