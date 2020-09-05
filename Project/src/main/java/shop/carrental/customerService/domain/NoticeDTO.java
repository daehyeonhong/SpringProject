package shop.carrental.customerService.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;
import lombok.Getter;
import lombok.Setter;
import shop.carrental.mapper.NoticeMapper;

@Component
@Getter
@Setter
public class NoticeDTO {

	@Setter(onMethod_ = @Autowired)
	private NoticeMapper noticeMapper;

	private int seq, count, likeIt;
	private String title, writer, content;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date regDate;

	public List<NoticeDTO> noticeList(int pageNumber, int limit) {
		List<NoticeDTO> notice = noticeMapper.getNoticeList();
		int totalRecord = noticeMapper.getTotalRecord(),
			start = (pageNumber - 1) * limit,
			index = start + 1;

		List<NoticeDTO> noticeList = new ArrayList<NoticeDTO>();
		for (int i = index; i < notice.size(); i++) {
			noticeList.add(notice.get(i));
			if (index < (start + limit) && index <= totalRecord) {
				index++;
			} else {
				break;
			}
		}
		return noticeList;
	}

	public NoticeDTO noticeDetail(int seq) {
		NoticeDTO notice = noticeMapper.getNotice(seq);
		return notice;
	}

	public int getListCount() {
		int totalRecord = 0;
		totalRecord = noticeMapper.getTotalRecord();
		return totalRecord;
	}

}