package com.example.du_an_2.controller;

import com.example.du_an_2.entities.ChatLieu;
import com.example.du_an_2.entities.KichThuoc;
import com.example.du_an_2.entities.MauSac;
import com.example.du_an_2.repositories.KichThuocRepository;
import com.example.du_an_2.viewmodel.ChatLieuViewModel;
import com.example.du_an_2.viewmodel.KichThuocViewModel;
import jakarta.validation.Valid;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

@Controller
@RequestMapping("kich-thuoc")
public class KichThuocController {
	@Autowired
	private KichThuocRepository kichThuocRepository;
	@GetMapping("danh-sach")
	public String danhSach(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
		Page<KichThuoc> page = kichThuocRepository.findAll(pageable);
		model.addAttribute("listKichThuoc", page);
		return "admin/crud/kichthuoc/kich-thuoc-hien-thi";
	}

	@GetMapping("form-add")
	public String formadd(Model model) {
		KichThuocViewModel kichThuocViewModel = new KichThuocViewModel();
		model.addAttribute("kichthuoc",kichThuocViewModel);
		return "admin/crud/kichthuoc/kich-thuoc-add";
	}
	@PostMapping("add")
	public String addKichThuoc(Model model, @Valid @ModelAttribute("kichthuoc") KichThuoc kichthuoc, BindingResult result,
							  KichThuocViewModel kichThuocViewModel) {
		if(result.hasErrors()){
			return "admin/crud/kichthuoc/kich-thuoc-hien-thi";
		}else{
			KichThuoc kichThuoc = new KichThuoc();
			kichThuoc.setMa(kichThuocViewModel.getMa());
			kichThuoc.setMa(kichThuocViewModel.getTen());
			kichThuocRepository.save(kichThuoc);
		}
		return "admin/crud/kichthuoc/kich-thuoc-hien-thi";
	}
	@PostMapping("import")
	public String importFile(Model model, @RequestParam("file") MultipartFile file,
							 @RequestParam(name = "page", defaultValue = "0") Integer pageNo) throws IOException, SQLException {
		if (file == null || file.isEmpty()) {
			Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
			Page<KichThuoc> page = kichThuocRepository.findAll(pageable);
			model.addAttribute("listKichthuoc", page);
			return "admin/crud/kichthuoc/kich-thuoc-hien-thi";
		}
		InputStream inputStream = file.getInputStream();
		Workbook workbook = new XSSFWorkbook(inputStream);
		Sheet sheet = workbook.getSheetAt(0);

		for (Row row : sheet) {
			String ma = row.getCell(0).getStringCellValue();
			String ten = row.getCell(1).getStringCellValue();
			KichThuoc existingKichThuoc = kichThuocRepository.findKichThuocByMa(ma);
			if (existingKichThuoc == null) {
				KichThuoc kichThuoc = new KichThuoc();
				kichThuoc.setMa(ma);
				kichThuoc.setTen(ten);
				kichThuocRepository.save(kichThuoc);
			}
		}
		workbook.close();
		return "admin/crud/kichthuoc/kich-thuoc-hien-thi";
	}
	@GetMapping("form-update")
	public String formupdate(Model model, @PathVariable String ma) {
		KichThuoc kichThuoc =kichThuocRepository.findKichThuocByMa(ma);
		model.addAttribute("update",kichThuoc);
		return "admin/crud/kichthuoc/kich-thuoc-update";
	}
}
