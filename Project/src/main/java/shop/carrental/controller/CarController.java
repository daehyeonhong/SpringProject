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
import shop.carrental.domain.CarDTO;
import shop.carrental.domain.ManufacturerDTO;
import shop.carrental.domain.SegmentDTO;
import shop.carrental.service.CarService;

@RestController
@RequestMapping("/car/*")
@Log4j
@AllArgsConstructor
public class CarController {

	private CarService carService;

	@GetMapping(value = "/carList/{manufacturer_seq}/{segment_seq}", produces = { MediaType.APPLICATION_ATOM_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<CarDTO>> listCar(@PathVariable("manufacturer_seq") int manufacturer_seq,
			@PathVariable("segment_seq") int segment_seq) {
		log.info("GetCarList");
		log.info("segment_seq::==> " + segment_seq);
		log.info("manufacturer_seq::==> " + manufacturer_seq);
		return new ResponseEntity<List<CarDTO>>(carService.listCar(manufacturer_seq, segment_seq), HttpStatus.OK);
	}

}