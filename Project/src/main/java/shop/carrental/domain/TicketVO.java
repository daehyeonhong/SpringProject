package shop.carrental.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class TicketVO {

	private Long tno;
	private String category;
	private String title;
	private String userId;
	private Date regDate;
	private Date updateDate;
	private int status;
	private String content;
	private MultipartFile uploadFile;
	private String images;

	private int replyCnt;
}