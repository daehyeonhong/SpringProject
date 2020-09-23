package shop.carrental.mappers;

import java.util.List;

import shop.carrental.domain.CustomerInquiryDTO;
import shop.carrental.domain.RentalInquiryDTO;
import shop.carrental.domain.RentalTypeVO;

public interface GeneralMapper {

	public void registerCustomerInquiry(CustomerInquiryDTO dto);

	public void registerRentalInquiry(RentalInquiryDTO dto);

	public List<RentalTypeVO> listRentalType();

}