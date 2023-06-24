package com.example.du_an_2.controller;

import com.example.du_an_2.entities.MauSac;
import com.example.du_an_2.entities.SanPham;
import com.example.du_an_2.repositories.SanPhamRepository;
import com.example.du_an_2.viewmodel.MauSacViewModel;
import com.example.du_an_2.viewmodel.SanPhamViewModel;
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
@RequestMapping("san-pham")
public class SanPhamController {
    @Autowired
    private SanPhamRepository sanPhamRepository;

    @GetMapping("danh-sach")
    public String danhSachSanPham(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNo, 10, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
        Page<SanPham> page = sanPhamRepository.findAll(pageable);
        model.addAttribute("listSP", page);

        return "admin/crud/sanpham/san-pham-hien-thi";
    }

    @GetMapping("form-add")
    public String formadd(Model model) {
        SanPhamViewModel sanPhamViewModel = new SanPhamViewModel();

        model.addAttribute("sanpham", sanPhamViewModel);
        return "admin/crud/sanpham/san-pham-add";
    }

    @PostMapping("add")
    public String add(@Valid @ModelAttribute("sanpham") SanPhamViewModel sanPhamViewModel, BindingResult result,
                      Model model) {
        if (result.hasErrors()) {
            return "san-pham-add";
        } else {
            SanPham sp = new SanPham();
            sp.setMa(sanPhamViewModel.getMa());
            sp.setTen(sanPhamViewModel.getTen());
            this.sanPhamRepository.save(sp);
        }
        return "redirect:/san-pham/danh-sach";
    }

    @PostMapping("import")
    public String importFile(Model model, @RequestParam("file") MultipartFile file,
                             @RequestParam(name = "page", defaultValue = "0") Integer pageNo) throws IOException, SQLException {
        if (file == null || file.isEmpty()) {
            Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
            Page<SanPham> page = sanPhamRepository.findAll(pageable);
            model.addAttribute("listSP", page);
            return "admin/crud/sanpham/san-pham-hien-thi";
        }
        InputStream inputStream = file.getInputStream();
        Workbook workbook = new XSSFWorkbook(inputStream);
        Sheet sheet = workbook.getSheetAt(0);

        for (Row row : sheet) {
            String ma = row.getCell(0).getStringCellValue();
            String ten = row.getCell(1).getStringCellValue();
            SanPham existingSanPham = sanPhamRepository.findSanPhamByMa(ma);
            if (existingSanPham == null) {
                SanPham sanPham = new SanPham();
                sanPham.setMa(ma);
                sanPham.setTen(ten);
                sanPhamRepository.save(sanPham);
            }
        }
        workbook.close();
        return "redirect:/san-pham/danh-sach";
    }

    @GetMapping("form-update/{ma}")
    public String formUpdate(Model model, @PathVariable String ma) {
        SanPham sanPham = sanPhamRepository.findSanPhamByMa(ma);
        model.addAttribute("sanpham", sanPham);
        return "admin/crud/sanpham/san-pham-update";
    }
}
