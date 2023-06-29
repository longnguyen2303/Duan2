package com.example.du_an_2.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.du_an_2.entities.ChiTietSP;

import com.example.du_an_2.repositories.CTSPRepository;

@Controller
@RequestMapping("sneaker")
public class TestController {
	@Autowired
	CTSPRepository ctspRepository;

	@GetMapping("trang-chu")
	public String trangChu(Model model) {
//		Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
//		Page<ChiTietSP> page = ctspRepository.findAll(pageable);
		model.addAttribute("listCTSP", ctspRepository.findAll(Sort.by(Sort.Direction.ASC, "lastModifiedDate")));
		return "indext";
	}

	@GetMapping("product")
	public String product(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
		Page<ChiTietSP> page = ctspRepository.findAll(pageable);
		model.addAttribute("listCTSP", page);
		return "product";
	}

	@GetMapping("product/search")
	public String productSearch(Model model, @RequestParam("inputsearch") String input, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
		Page<ChiTietSP> page = ctspRepository.getListBySearch(input, pageable);
		model.addAttribute("listCTSP", page);
		return "product";
	}


	@GetMapping("detail/{id}")
	public String detail(Model model, @PathVariable UUID id) {
		ChiTietSP ctChiTietSP = ctspRepository.findById(id).orElse(null);
		model.addAttribute("detail", ctChiTietSP);
		return "detail";
	}
}
