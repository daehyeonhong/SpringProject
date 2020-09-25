package shop.carrental.mappers;

import shop.carrental.domain.InquiryDTO;

public interface GeneralMapper {

	public void registerInquiry(InquiryDTO dto);

	public InquiryDTO read(Long inquiry_seq);

}