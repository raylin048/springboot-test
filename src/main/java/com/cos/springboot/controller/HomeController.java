package com.cos.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.springboot.dto.RequestLoginDto;
import com.cos.springboot.dto.RequestUserDto;
import com.cos.springboot.dto.ResponseData;

@Controller
@RequestMapping("/home")
public class HomeController {
	
	// localhost:8080/home
	// localhost:8080/home/
	@GetMapping({"","/"})
	public String home() {
		return "home";
	}
	
	// localhost:8080/home/hello
	// Get → 페이지 이동 → Select
	@GetMapping("/hello")
	public String hello_get() {
		// DB Select - model
		return "hello";
	}
	
	@PostMapping("/hello")
	public @ResponseBody ResponseData hello_post(@RequestBody RequestUserDto requestUserDto) {
		// DB Insert
		System.out.println(requestUserDto.getId());
		return new ResponseData(200,"ok");
	}
	
	@DeleteMapping("/hello")
	public @ResponseBody ResponseData hello_delete(@RequestBody RequestUserDto requestUserDto) {
		// DB Delete
		System.out.println(requestUserDto.getId());
		return new ResponseData(200,"ok");
	}
	
	@PutMapping("/hello")
	public @ResponseBody ResponseData hello_put(@RequestBody RequestLoginDto requestLoginDto) {
		// DB Insert
		System.out.println(requestLoginDto.getUsername());
		System.out.println(requestLoginDto.getPhone());
		return new ResponseData(200,"ok");
	}
}
