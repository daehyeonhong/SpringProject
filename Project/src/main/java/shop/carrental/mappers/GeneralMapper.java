package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.domain.InquiryTypeDTO;

public interface GeneralMapper {

	public void registerCustomerInquiry(InquiryDTO dto);

	public void registerRentalInquiry(InquiryDTO dto);

	public List<InquiryTypeDTO> listRentalType();

}