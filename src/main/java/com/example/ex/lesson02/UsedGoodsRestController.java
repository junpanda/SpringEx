package com.example.ex.lesson02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.ex.lesson02.bo.UsedGoodsBO;
import com.example.ex.lesson02.model.UsedGoods;

@RestController
public class UsedGoodsRestController {
	
	@Autowired
	public UsedGoodsBO usedGoodsBO;
	
	@RequestMapping("/lesson02/ex01")
	public List<UsedGoods> Ex01(){
		
		return usedGoodsBO.getUsedGoodsList();
	}
	
}
