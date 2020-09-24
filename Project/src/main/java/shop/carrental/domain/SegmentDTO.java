package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SegmentDTO {

	private Long segment_seq;

	private String segment_name, segment_desc;

}