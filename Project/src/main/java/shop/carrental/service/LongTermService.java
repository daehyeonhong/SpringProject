package shop.carrental.service;

import shop.carrental.domain.CarVO;

public interface LongTermService {

	public void list();

	public CarVO detail(Long trim_seq);

}