package com.example.ex.lesson06;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NewUser06Controller {
	@GetMapping("/lesson06/ex01/add_user_view")
	public String ex01() {
		return "lesson06/addUser";
	}
	
	@ResponseBody
	@PostMapping("/lesson06/ex01/add_user")
	public String ex02(
			@RequestParam("name") String name,
			@RequestParam("yyyymmdd") String yyyymmdd,
			@RequestParam("introduce") String introduce,
			@RequestParam("email") String email) {
		
		int count = 0;
		if(count == 1) {
			return "삽입 성공";
		}
		else {
			return "삽입 실패";
		}
	}
}
