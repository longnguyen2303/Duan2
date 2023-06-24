package com.example.du_an_2.controller;

import com.example.du_an_2.entities.MauSac;
import com.example.du_an_2.repositories.MauSacRepository;
import com.example.du_an_2.viewmodel.MauSacViewModel;
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
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping("mau-sac")
public class MauSacController {

	@Autowired
	private MauSacRepository mauSacRepository;

	@GetMapping("danh-sach")
	public String danhSachMauSac(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
		Page<MauSac> page = mauSacRepository.findAll(pageable);
		model.addAttribute("listMau", page);
//        model.addAttribute("listMau", mauSacRepository.findAll(Sort.by(Sort.Direction.ASC, "lastModifiedDate")));
		return "admin/crud/mausac/mau-hien-thi";
	}

	@GetMapping("form-add")
	public String formAdd(Model model) {
		MauSacViewModel mauSacViewModel = new MauSacViewModel();
		mauSacViewModel.setMa("M01");
		mauSacViewModel.setTen("Đen");
		model.addAttribute("mausac", mauSacViewModel);
		return "admin/crud/mausac/mau-add";
	}

	@PostMapping("add")
	public String add(@Valid @ModelAttribute("mausac") MauSacViewModel mauSacViewModel, BindingResult result,
			Model model) {
		if (result.hasErrors()) {
			return "admin/crud/mausac/mau-add";
		} else {
			MauSac ms = new MauSac();
			ms.setMa(mauSacViewModel.getMa());
			ms.setTen(mauSacViewModel.getTen());
			this.mauSacRepository.save(ms);
		}
		return "redirect:/mau-sac/danh-sach";
	}

	@PostMapping("import")
	public String importFile(Model model, @RequestParam("file") MultipartFile file,
			@RequestParam(name = "page", defaultValue = "0") Integer pageNo) throws IOException, SQLException {
		if (file == null || file.isEmpty()) {
			Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
			Page<MauSac> page = mauSacRepository.findAll(pageable);
			model.addAttribute("listMau", page);
			return "admin/crud/mausac/mau-hien-thi";
		}
		InputStream inputStream = file.getInputStream();
		Workbook workbook = new XSSFWorkbook(inputStream);
		Sheet sheet = workbook.getSheetAt(0);

		for (Row row : sheet) {
			String ma = row.getCell(0).getStringCellValue();
			String ten = row.getCell(1).getStringCellValue();
			MauSac existingMauSac = mauSacRepository.findMauSacByMa(ma);
			if (existingMauSac == null) {
				MauSac mauSac = new MauSac();
				mauSac.setMa(ma);
				mauSac.setTen(ten);
				mauSacRepository.save(mauSac);
			}
		}
		workbook.close();
		return "redirect:/mau-sac/danh-sach";
	}

	@GetMapping("form-update/{id}")
	public String formUpdate(Model model, @PathVariable("id") MauSac mauSac) {
		model.addAttribute("mausac", mauSac);
		return "admin/crud/mausac/mau-update";
	}

}
