package org.going.grade.web;

import javax.inject.Inject;

import org.going.grade.domain.GradeDTO;
import org.going.grade.service.GradeService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/user/*")
@Log4j
public class GradeController {
	
	@Inject
	GradeService service;
	
	@RequestMapping(value="/grade", method = RequestMethod.GET)
	public void gradeList(Model model) throws Exception{
		model.addAttribute("gradeList", service.getGradeList());
	}
	
	@RequestMapping(value="addGradeAjax", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> addGrade(GradeDTO dto) throws Exception{
		try {
			service.addGrade(dto);
		}catch(Exception e) {
			log.warn("addGrade : 오류발생", e);
			log.warn(dto.toString());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return new ResponseEntity<>(HttpStatus.CREATED);
	
	}
	
}
