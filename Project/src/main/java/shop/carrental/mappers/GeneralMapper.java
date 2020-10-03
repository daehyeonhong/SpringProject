package shop.carrental.mappers;

import java.util.List;

import shop.carrental.domain.Criteria;
import shop.carrental.domain.InquiryDTO;

public interface GeneralMapper {

	public void registerInquiry(InquiryDTO dto);

	public InquiryDTO read(Long inquiry_seq);

	public List<InquiryDTO> listInquiry(Criteria criteria);

	public int total(Criteria criteria);

}