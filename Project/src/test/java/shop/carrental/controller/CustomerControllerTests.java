package shop.carrental.controller;

import java.util.HashMap;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml", /* DAO, Service */
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" }) /* Controller */
@Log4j
public class CustomerControllerTests {

	@Setter(onMethod_ = @Autowired)
	private WebApplicationContext webApplicationContext;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
	}

	@Ignore
	@Test
	public void testNoticeList() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/customer/notice")).andReturn().getModelAndView()
				.getViewName());
	}

	@Test
	public void testNoticeSearch() throws Exception {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("searchBy", "title");
		map.put("keyword", "i");

		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/customer/noticeSearch").param("searchBy", "all").param("keyword", "i"))
				.andReturn().getModelAndView().getViewName());
	}

}
