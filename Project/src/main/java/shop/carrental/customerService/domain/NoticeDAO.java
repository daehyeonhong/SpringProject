package shop.carrental.customerService.domain;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public List<NoticeDTO> getNoticeList(NoticeDTO dto) {
		return mybatis.selectList("NoticeDAO.getNoticeList", dto);
	}

}
