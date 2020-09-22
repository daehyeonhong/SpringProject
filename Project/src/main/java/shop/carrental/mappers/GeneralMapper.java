package shop.carrental.mappers;

import shop.carrental.domain.CustomerInquiryDTO;
import shop.carrental.domain.RentalInquiryDTO;

public interface GeneralMapper {

	public void registerCustomerInquiry(CustomerInquiryDTO dto);

	public void registerRentalInquiry(RentalInquiryDTO dto);

}