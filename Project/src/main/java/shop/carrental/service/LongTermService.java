package shop.carrental.service;

import org.springframework.ui.Model;

public interface LongTermService {

	public void list(Model model);

	public void detail(Long trim_seq, Model model);

}