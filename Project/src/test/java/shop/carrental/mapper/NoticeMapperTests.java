package shop.carrental.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import shop.carrental.customerService.domain.NoticeDTO;
import shop.carrental.customerService.mapper.NoticeMapper;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTests {

	@Setter(onMethod_ = @Autowired)
	private NoticeMapper mapper;

	@Test
	public void testInsert() {
		NoticeDTO dto = new NoticeDTO();
		dto.setTitle("Mybatis Test Title");
		dto.setContent("MyBatis Test Content");
		dto.setWriter("MyBatis Test Writer");

		mapper.insert(dto);

		log.info(dto);
	}

}