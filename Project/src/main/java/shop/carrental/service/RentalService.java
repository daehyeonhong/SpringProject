package shop.carrental.service;

import java.util.List;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.AppointDTO;
import shop.carrental.domain.BranchDTO;

public interface RentalService {

	public boolean registerAppoint(AppointDTO dto, RedirectAttributes redirectAttributes);

	public BranchDTO getBranch(Long branch_seq);

}