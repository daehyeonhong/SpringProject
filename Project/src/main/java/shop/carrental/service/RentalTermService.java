package shop.carrental.service;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import shop.carrental.domain.AppointDTO;

public interface RentalTermService {

	boolean registerAppoint(AppointDTO dto, RedirectAttributes redirectAttributes);

}