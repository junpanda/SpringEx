package com.example.ex.lesson04;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewstudentController {
	
	@RequestMapping("/lesson04/ex02/1")
	public String addStudentView() {
		return "lesson04/addStudent";
	}
	
	//@RequestMapping("lesson04/ex02/add_student", method = RequestMethod.GET)
	//@PostMapping
	//public String addStudent() {
	//	@ModelAttribute NewStudent student()
	//}
}