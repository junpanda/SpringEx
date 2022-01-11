package com.example.ex.lesson05;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Lesson05Controller {
	
	@GetMapping("/lesson05/ex01")
	public String ex01() {
		return "lesson05/ex01";
	}
	
	@GetMapping("/lesson05/ex02")
	public String ex02(Model model) {
		//과일이름 리스트
		List<String> fruits = new ArrayList();
		fruits.add("apple");
		fruits.add("banana");
		fruits.add("orange");
		fruits.add("peach");
		fruits.add("grape");
		
		model.addAttribute("fruits",fruits);
		
		//회원정보
		List<Map<String,Object>> users = new ArrayList<>();
		Map<String,Object> map = new HashMap();
		map.put("name", "김인규");
		map.put("age", 28);
		map.put("hobby", "댄스");
		users.add(map);
		
		map = new HashMap<>();
		map.put("name", "김바다");
		map.put("age", 25);
		map.put("hobby", "사냥하기");
		users.add(map);
		
		model.addAttribute("users",users);
		
		return "lesson05/ex02";
	}
	
	@GetMapping("/lesson05/ex04")
	public String ex04() {
		return "lesson05/ex04";
	}
}
