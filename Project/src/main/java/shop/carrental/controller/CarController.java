package shop.carrental.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.CarVO;
import shop.carrental.domain.ShortCarVO;
import shop.carrental.service.CarService;
import shop.carrental.service.RentalService;

@RestController
@RequestMapping("/car/*")
@Log4j
@AllArgsConstructor
public class CarController {

	private CarService carService;
	private RentalService rentalService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-DD");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	@GetMapping(value = "/carList/{mfgco_seq}/{segment_seq}", produces = { MediaType.APPLICATION_ATOM_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<CarVO>> carList(@PathVariable("mfgco_seq") Long mfgco_seq,
			@PathVariable("segment_seq") Long segment_seq) {
		log.info("listCar ==> " + mfgco_seq + "::" + segment_seq + " <==");

		return new ResponseEntity<List<CarVO>>(carService.listCar(mfgco_seq, segment_seq), HttpStatus.OK);
	}

	@GetMapping(value = "/shortCarList/{start_date}/{end_date}/{branch_seq}", produces = {
			MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<ShortCarVO>> shortCarList(@PathVariable("start_date") Date start_date,
			@PathVariable("end_date") Date end_date, @PathVariable("branch_seq") Long branch_seq) {
		log.info("shortCarList ==> " + start_date + "::" + end_date + "::" + branch_seq + " <==");

		return new ResponseEntity<List<ShortCarVO>>(carService.listShortCar(start_date, end_date, branch_seq),
				HttpStatus.OK);
	}

	@GetMapping(value = "/branch/{branch_seq}", produces = { MediaType.APPLICATION_ATOM_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<BranchDTO> branch(@PathVariable("branch_seq") Long branch_seq) {
		log.info("branch ==> " + branch_seq + " <==");

		return new ResponseEntity<BranchDTO>(rentalService.getBranch(branch_seq), HttpStatus.OK);
	}

}