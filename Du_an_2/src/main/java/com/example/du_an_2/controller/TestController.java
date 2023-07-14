package com.example.du_an_2.controller;

import java.util.List;
import java.util.UUID;

import com.example.du_an_2.entities.HoaDon;
import com.example.du_an_2.repositories.HoaDonRepository;
import com.example.du_an_2.repositories.MauSacRepository;
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
import com.example.du_an_2.entities.Hang;
import com.example.du_an_2.repositories.CTSPRepository;
import com.example.du_an_2.repositories.HangRepository;

@Controller
@RequestMapping("sneaker")
public class TestController {
	@Autowired
	private CTSPRepository ctspRepository;

	@Autowired
	private HangRepository hangRepository;

	@Autowired
	private MauSacRepository mauSacRepository;

	@Autowired
	private HoaDonRepository hoaDonRepository;

	@GetMapping("trang-chu")
	public String trangChu(Model model) {
//		Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
//		Page<ChiTietSP> page = ctspRepository.findAll(pageable);
		model.addAttribute("listCTSP", ctspRepository.findAll(Sort.by(Sort.Direction.DESC, "lastModifiedDate")));
		return "indext";
	}

	@GetMapping("product")
	public String product(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.DESC, "lastModifiedDate"));
		Page<ChiTietSP> page = ctspRepository.findAll(pageable);
		model.addAttribute("listCTSP", page);
		return "product";
	}

	@GetMapping("product/search")
	public String productSearch(Model model, @RequestParam("inputsearch") String input,
			@RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.DESC, "lastModifiedDate"));
		Page<ChiTietSP> page = ctspRepository.getListBySearch(input, pageable);
		model.addAttribute("listCTSP", page);
		model.addAttribute("inputsearch", input);
		return "product";
	}

	@GetMapping("detail/{id}")
	public String detail(Model model, @PathVariable UUID id) {
		ChiTietSP ctChiTietSP = ctspRepository.findById(id).orElse(null);
		model.addAttribute("detail", ctChiTietSP);
		return "detail";
	}

	@GetMapping("productfilter")
	public String filter1(Model model) {
		List<Hang> list = hangRepository.findAll();
		model.addAttribute("listHang", list);
		model.addAttribute("listMau", this.mauSacRepository.findAll());
		List<ChiTietSP> list1 = ctspRepository.findAll();
		model.addAttribute("list", list1);
		return "productfilter";
	}

	@GetMapping("hang/{id}/product")
	public String filter(Model model, @PathVariable UUID id) {
		List<Hang> list = hangRepository.findAll();
		model.addAttribute("listHang", list);
		model.addAttribute("listMau", this.mauSacRepository.findAll());

		List<ChiTietSP> listbyHang = ctspRepository.getCTSPbyid(id);
		model.addAttribute("listSpbyHang", listbyHang);

		return "productfilter1";
	}

	@GetMapping("hoa-don")
	public String hoaDon(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.DESC, "lastModifiedDate"));
		Page<HoaDon> page = hoaDonRepository.findAll(pageable);
		model.addAttribute("listHD", page);
		return "qlhoadon";
	}
}
