package org.zerock.controller;

import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.domain.SampleDTO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/sample*")
@Log4j
public class SampleController {

	@RequestMapping("")
	public void basic() {
		log.info("basic..........");
	}
	
	@GetMapping("/basicOnlyGet")
	public void basicGet2() {
		log.info("basic get only get.........");
	}
	
	@GetMapping("/ex01")
	public String basicGet2(SampleDTO dto) {
		log.info(""+dto);
		return "ex01";
	}
	
	@GetMapping("/ex02")
	public String ex02(@RequestParam("name") String name, @RequestParam("age") int age) {
		log.info("name : " + name);
		log.info("age: " + age);
		return "ex02";
	}
	
	@GetMapping("/ex02List")
	public String ex02List(@RequestParam("ids")ArrayList<String> ids) {
		log.info("ids"+ids);
		return "ex02List";
	}
	
	@GetMapping("/ex02Array")
	public String ex02List(@RequestParam("ids")String[] ids) {
		log.info("array ids"+Arrays.toString(ids));
		return "ex02List";
	}
	
	@GetMapping("/ex04")
	public String ex04(SampleDTO dto, @ModelAttribute("page") int page) {
		log.info("dto:"+dto);
		log.info("page:"+page);
		return "/sample/ex04";
	}
	
	@GetMapping("/re1")
	public String re1() {
		log.info("rel..............");
		return "redirect:/sample/re2";
	}
	
	@GetMapping("/re2")
	public void re2() {
		log.info("rel2..............");
	}
	
	@GetMapping("/ex06")
	public @ResponseBody SampleDTO ex06() {
		log.info("/ex06............");
		SampleDTO dto = new SampleDTO();
		dto.setAge(10);
		dto.setName("홍길동");
		return dto;
	}
}
