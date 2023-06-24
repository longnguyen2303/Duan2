package com.example.du_an_2.controller;

import com.example.du_an_2.entities.Hang;
import com.example.du_an_2.entities.MauSac;
import com.example.du_an_2.repositories.HangRepository;
import com.example.du_an_2.viewmodel.HangViewModel;
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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

@Controller
@RequestMapping("hang")
public class HangController {

	@Autowired
	private HangRepository hangRepository;

	@GetMapping("danh-sach")
	public String hienthi(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
		Page<Hang> page = hangRepository.findAll(pageable);
		model.addAttribute("listHang", page);
		return "admin/crud/hang/hang-hien-thi";
	}

	@GetMapping("form-add")
	public String formadd(Model model) {
		HangViewModel hangViewModel = new HangViewModel();
		hangViewModel.setMa("H01");
		hangViewModel.setTen("Hãng 1");
		model.addAttribute("hang", hangViewModel);
		return "admin/crud/hang/hang-add";
	}

	@PostMapping("add")
	public String add(@Valid @ModelAttribute("hang") HangViewModel hangViewModel, BindingResult result,
					  Model model) {
		if (result.hasErrors()) {
			return "admin/crud/hang/hang-add";
		} else {
			Hang hang = new Hang();
			hang.setMa(hangViewModel.getMa());
			hang.setTen(hangViewModel.getTen());
			this.hangRepository.save(hang);
		}
		return "redirect:/hang/danh-sach";
	}

	@PostMapping("import")
	public String importFile(Model model, @RequestParam("file") MultipartFile file,
							 @RequestParam(name = "page", defaultValue = "0") Integer pageNo) throws IOException, SQLException {
		if (file == null || file.isEmpty()) {
			Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
			Page<Hang> page = hangRepository.findAll(pageable);
			model.addAttribute("listMau", page);
			return "admin/crud/hang/mau-hien-thi";
		}
		InputStream inputStream = file.getInputStream();
		Workbook workbook = new XSSFWorkbook(inputStream);
		Sheet sheet = workbook.getSheetAt(0);

		for (Row row : sheet) {
			String ma = row.getCell(0).getStringCellValue();
			String ten = row.getCell(1).getStringCellValue();
			Hang existingMauSac = hangRepository.findHangByMa(ma);
			if (existingMauSac == null) {
				Hang hang = new Hang();
				hang.setMa(ma);
				hang.setTen(ten);
				hangRepository.save(hang);
			}
		}
		workbook.close();
		return "redirect:/mau-sac/danh-sach";
	}

	@GetMapping("form-update/{id}")
	public String formupdate(Model model, @PathVariable("id") Hang hang, HangViewModel hangViewModel) {
		hangViewModel.setTen(hang.getTen());
		hangViewModel.setMa(hang.getMa());
		model.addAttribute("hang", hangViewModel);
		return "admin/crud/hang/hang-update";
	}
}
