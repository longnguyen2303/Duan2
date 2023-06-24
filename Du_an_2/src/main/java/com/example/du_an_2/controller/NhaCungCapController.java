package com.example.du_an_2.controller;

import com.example.du_an_2.entities.MauSac;
import com.example.du_an_2.entities.NhaCungCap;
import com.example.du_an_2.repositories.NhaCungCapRepository;
import com.example.du_an_2.viewmodel.MauSacViewModel;
import com.example.du_an_2.viewmodel.NhaCungCapViewModel;
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
@RequestMapping("ncc")
public class NhaCungCapController {
    @Autowired
    private NhaCungCapRepository nhaCungCapRepository;

    @GetMapping("danh-sach")
    public String hienthi(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
        Page<NhaCungCap> page = nhaCungCapRepository.findAll(pageable);
        model.addAttribute("listNCC", page);
        return "admin/crud/ncc/ncc-hien-thi";
    }

    @GetMapping("form-add")
    public String formAdd(Model model) {
        NhaCungCapViewModel nhaCungCapViewModel = new NhaCungCapViewModel();

        model.addAttribute("nhacungcap", nhaCungCapViewModel);
        return "admin/crud/ncc/ncc-add";
    }

    @PostMapping("add")
    public String add(@Valid @ModelAttribute("nhacungcap") NhaCungCapViewModel nhaCungCapViewModel, BindingResult result,
                      Model model) {
        if (result.hasErrors()) {
            return "ncc-add";
        } else {
            NhaCungCap ncc = new NhaCungCap();
            ncc.setMa(nhaCungCapViewModel.getMa());
            ncc.setTen(nhaCungCapViewModel.getTen());
            this.nhaCungCapRepository.save(ncc);
        }
        return "redirect:/ncc/danh-sach";
    }

    @PostMapping("import")
    public String importFile(Model model, @RequestParam("file") MultipartFile file,
                             @RequestParam(name = "page", defaultValue = "0") Integer pageNo) throws IOException, SQLException {
        if (file == null || file.isEmpty()) {
            Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
            Page<NhaCungCap> page = nhaCungCapRepository.findAll(pageable);
            model.addAttribute("listNCC", page);
            return "ncc-hien-thi";
        }
        InputStream inputStream = file.getInputStream();
        Workbook workbook = new XSSFWorkbook(inputStream);
        Sheet sheet = workbook.getSheetAt(0);

        for (Row row : sheet) {
            String ma = row.getCell(0).getStringCellValue();
            String ten = row.getCell(1).getStringCellValue();
            NhaCungCap existingNhaCungCap = nhaCungCapRepository.findNhaCungCapByMa(ma);
            if (existingNhaCungCap == null) {
                NhaCungCap nhaCungCap = new NhaCungCap();
                nhaCungCap.setMa(ma);
                nhaCungCap.setTen(ten);
                nhaCungCapRepository.save(nhaCungCap);
            }
        }
        workbook.close();
        return "redirect:/ncc/danh-sach";
    }

    @GetMapping("form-update")
    public String formupdate(Model model) {
        return "admin/crud/ncc/ncc-update";
    }
}
