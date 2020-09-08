package shop.carrental.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.NoticeDTO;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTests {

	@Setter(onMethod_ = @Autowired)
	private NoticeMapper mapper;

	@Test
	public void testGetNoticeList() {
		mapper.getNoticeList().forEach(notice -> log.info(notice));
	}

	@Test
	public void testInsert() {
		NoticeDTO dto = new NoticeDTO();
		dto.setTitle("Title");
		dto.setContent("Content");
		dto.setWriter("Writer");

		mapper.insert(dto);

		log.info(dto);
	}

	@Test
	public void testGetNotice() {
		NoticeDTO dto = mapper.read(87L);
		log.info(dto);
	}

	public void testDelete() {
		log.info("Delete Count: " + mapper.delete(42L));
	}
}