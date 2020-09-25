package shop.carrental.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.CarVO;
import shop.carrental.service.CarService;

@RestController
@RequestMapping("/car/*")
@Log4j
@AllArgsConstructor
public class CarController {

	private CarService carService;

	@GetMapping(value = "/carList/{mfgco_seq}/{segment_name}", produces = { MediaType.APPLICATION_ATOM_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<CarVO>> carList(@PathVariable("mfgco_seq") Long mfgco_seq,
			@PathVariable("segment_name") String segment_name) {
		log.info("listCar ==>" + mfgco_seq + "::" + segment_name + "<==");

		return new ResponseEntity<List<CarVO>>(carService.listCar(mfgco_seq, segment_name), HttpStatus.OK);
	}

}