package com.example.du_an_2.controller;


import com.example.du_an_2.entities.NhanVien;
import com.example.du_an_2.repositories.NhanVienRepository;
import com.example.du_an_2.viewmodel.NhanVienViewModel;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminQLNhanVienController {

    @Autowired
    private NhanVienRepository nhanVienRepository;

    @GetMapping("dashboard/quan-ly-nhan-vien")
    public String danhSachNhanVien(Model model){
        NhanVienViewModel nhanVienViewModel = new NhanVienViewModel();
        model.addAttribute("nv", nhanVienViewModel);
        model.addAttribute("listNV", nhanVienRepository.findAll());
        return "admin/quanlynv/quanlynv";
    }

    @PostMapping("dashboard/add-nv")
    public String addNV(@Valid @ModelAttribute("nv") NhanVienViewModel nhanVienViewModel, BindingResult bindingResult, Model model){
        if(bindingResult.hasErrors()){
            model.addAttribute("listNV", nhanVienRepository.findAll());
            return "admin/quanlynv/quanlynv";
        }else{
            NhanVien nhanVien = new NhanVien();
            nhanVien.setMa(nhanVienViewModel.getMa());
            nhanVien.setHoTen(nhanVienViewModel.getHoTen());
            nhanVien.setDiaChi(nhanVienViewModel.getDiaChi());
            nhanVien.setGioiTinh(Integer.valueOf(nhanVienViewModel.getGioiTinh()));
            nhanVien.setSdt(nhanVienViewModel.getSdt());
            nhanVien.setEmail(nhanVienViewModel.getEmail());
            nhanVienRepository.save(nhanVien);
        }
        return "redirect:/admin/dashboard/quan-ly-nhan-vien";
    }
}
