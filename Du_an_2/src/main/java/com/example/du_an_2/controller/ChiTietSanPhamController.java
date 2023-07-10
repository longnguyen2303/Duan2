package com.example.du_an_2.controller;

import com.example.du_an_2.entities.*;
import com.example.du_an_2.repositories.*;
import com.example.du_an_2.viewmodel.ChiTietSPViewModel;
import jakarta.validation.Valid;
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

import java.math.BigDecimal;
import java.util.UUID;

@Controller
@RequestMapping("ctsp")
public class ChiTietSanPhamController {

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Autowired
    private HangRepository hangRepository;

    @Autowired
    private MauSacRepository mauSacRepository;

    @Autowired
    private NhaCungCapRepository nhaCungCapRepository;

    @Autowired
    private KichThuocRepository kichThuocRepository;

    @Autowired
    private ChatLieuRepository chatLieuRepository;

    @Autowired
    private CTSPRepository ctspRepository;

    @Autowired
    private HinhAnhRepository hinhAnhRepository;

    @GetMapping("danh-sach")
    public String hienthi(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
        Page<ChiTietSP> page = ctspRepository.findAll(pageable);
        model.addAttribute("listCTSP", page);
        return "admin/crud/chitietsanpham/ctsp-hien-thi";
    }

    @GetMapping("form-add")
    public String formadd(Model model) {
        ChiTietSPViewModel chiTietSPViewModel = new ChiTietSPViewModel();
        chiTietSPViewModel.setSoLuong(100);
        chiTietSPViewModel.setDonGia(BigDecimal.valueOf(200000));
        chiTietSPViewModel.setGiaBan(BigDecimal.valueOf(300000));
        chiTietSPViewModel.setMoTa("Không có mô tả");
        model.addAttribute("listHang", hangRepository.findAll());
        model.addAttribute("listNCC", nhaCungCapRepository.findAll());
        model.addAttribute("listSP", sanPhamRepository.findAll());
        model.addAttribute("listKT", kichThuocRepository.findAll());
        model.addAttribute("listChatLieu", chatLieuRepository.findAll());
        model.addAttribute("listMauSac", mauSacRepository.findAll());
        model.addAttribute("ct", chiTietSPViewModel);
        return "admin/crud/chitietsanpham/ctsp-add";
    }

    @PostMapping("add")
    public String add(Model model, @Valid @ModelAttribute("ct") ChiTietSPViewModel chiTietSPViewModel, BindingResult result,
                      @RequestParam("mauSac") String idmauSac,
                      @RequestParam("sanPham") String idsanPham,
                      @RequestParam("chatLieu") String idchatLieu,
                      @RequestParam("hang") String idhang,
                      @RequestParam("kichThuoc") String idkichThuoc,
                      @RequestParam("nhaCungCap") String idncc,
                      @RequestParam("anh") MultipartFile linkAnh) {
        if(result.hasErrors()){
            model.addAttribute("listMauSac", mauSacRepository.findAll());
            model.addAttribute("listHang", hangRepository.findAll());
            model.addAttribute("listNCC", nhaCungCapRepository.findAll());
            model.addAttribute("listSP", sanPhamRepository.findAll());
            model.addAttribute("listKT", kichThuocRepository.findAll());
            model.addAttribute("listChatLieu", chatLieuRepository.findAll());
            return "admin/crud/chitietsanpham/ctsp-add";
        }else{
            MauSac mauSac = mauSacRepository.findById(UUID.fromString(idmauSac)).orElse(null);
            SanPham sanPham = sanPhamRepository.findById(UUID.fromString(idsanPham)).orElse(null);
            KichThuoc kichThuoc = kichThuocRepository.findById(UUID.fromString(idkichThuoc)).orElse(null);
            ChatLieu chatLieu = chatLieuRepository.findById(UUID.fromString(idchatLieu)).orElse(null);
            NhaCungCap nhaCungCap = nhaCungCapRepository.findById(UUID.fromString(idncc)).orElse(null);
            Hang hang = hangRepository.findById(UUID.fromString(idhang)).orElse(null);
            ChiTietSP chiTietSP = new ChiTietSP();
            chiTietSP.setChatLieu(chatLieu);
            chiTietSP.setSanPham(sanPham);
            chiTietSP.setHang(hang);
            chiTietSP.setKichThuoc(kichThuoc);
            chiTietSP.setMauSac(mauSac);
            chiTietSP.setNhaCungCap(nhaCungCap);
            chiTietSP.setSoLuong(chiTietSPViewModel.getSoLuong());
            chiTietSP.setDonGia(chiTietSPViewModel.getDonGia());
            chiTietSP.setGiaBan(chiTietSPViewModel.getGiaBan());
            chiTietSP.setMoTa(chiTietSPViewModel.getMoTa());
            if(!linkAnh.isEmpty()){
                chiTietSP.setHinhAnh(linkAnh.getOriginalFilename());
            }
            this.ctspRepository.save(chiTietSP);
        }
        return "redirect:/sneaker/product";
    }

    @GetMapping("form-update/{id}")
    public String formupdate(Model model, @PathVariable("id") ChiTietSP chiTietSP, ChiTietSPViewModel chiTietSPViewModel) {
        model.addAttribute("listMauSac", mauSacRepository.findAll());
        model.addAttribute("listHang", hangRepository.findAll());
        model.addAttribute("listNCC", nhaCungCapRepository.findAll());
        model.addAttribute("listSP", sanPhamRepository.findAll());
        model.addAttribute("listKT", kichThuocRepository.findAll());
        model.addAttribute("listChatLieu", chatLieuRepository.findAll());
        chiTietSPViewModel.setGiaBan(chiTietSP.getGiaBan());
        chiTietSPViewModel.setDonGia(chiTietSP.getDonGia());
        chiTietSP.setSoLuong(chiTietSP.getSoLuong());
        chiTietSPViewModel.setSanPham(chiTietSP.getSanPham().getId());
        chiTietSPViewModel.setChatLieu(chiTietSP.getChatLieu().getId());
        chiTietSPViewModel.setMauSac(chiTietSP.getMauSac().getId());
        chiTietSPViewModel.setKichThuoc(chiTietSP.getKichThuoc().getId());
        chiTietSPViewModel.setNhaCungCap(chiTietSP.getNhaCungCap().getId());
        chiTietSPViewModel.setHang(chiTietSP.getHang().getId());
        model.addAttribute("ct", chiTietSPViewModel);
        model.addAttribute("id", chiTietSP.getId());
        return "admin/crud/chitietsanpham/ctsp-update";
    }
}
