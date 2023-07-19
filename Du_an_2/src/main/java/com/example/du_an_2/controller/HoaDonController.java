package com.example.du_an_2.controller;

import com.example.du_an_2.entities.ChiTietSP;
import com.example.du_an_2.entities.HoaDon;
import com.example.du_an_2.entities.HoaDonChiTiet;
import com.example.du_an_2.repositories.CTSPRepository;
import com.example.du_an_2.repositories.HoaDonChiTietRepository;
import com.example.du_an_2.repositories.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping("sneaker")
public class HoaDonController {

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private CTSPRepository ctspRepository;

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

//    @GetMapping("hoa-don")
//    public String hoaDon(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
//        Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.DESC, "lastModifiedDate"));
//        Page<HoaDon> page = hoaDonRepository.findAll(pageable);
//        model.addAttribute("listHD", page);
//        return "qlhoadon";
//    }


    @PostMapping("hoa-don/tao-hoa-don")
    public String taoHoaDon(Model model) {
        HoaDon hoaDon = new HoaDon();
        LocalDateTime time = LocalDateTime.now();
        String maHd = "HD" + String.valueOf(time.getYear()).substring(2) +
                time.getMonthValue() + time.getDayOfMonth() + time.getHour() +
                time.getMinute() + time.getSecond();
        hoaDon.setMa(maHd);
        hoaDon.setNgayTao(new Date());
        hoaDon.setHinhThucGiaoHang(0);
        this.hoaDonRepository.save(hoaDon);
        model.addAttribute("listHDCT", hoaDonChiTietRepository.getListByHoaDon(hoaDon.getId()));
        return "redirect:/sneaker/edit_hoadon/" + hoaDon.getId();
    }

//	@GetMapping("hoa-don/tao-hoa-don")
//	public String thd(Model model) {
//		HoaDon hoaDon = new HoaDon();
//		LocalDateTime time = LocalDateTime.now();
//		String maHd = "HD" + String.valueOf(time.getYear()).substring(2) + time.getMonthValue() + time.getDayOfMonth()
//				+ time.getHour() + time.getMinute() + time.getSecond();
//		hoaDon.setMa(UUID.randomUUID().toString());
//		hoaDon.setNgayTao(new Date());
//		hoaDon.setHinhThucGiaoHang(0);
//		this.hoaDonRepository.save(hoaDon);
//
//		HoaDon hd = hoaDonRepository.findbymaxid(hoaDon.getId());
//		model.addAttribute("hdd", hd);
//		model.addAttribute("listCTSP", ctspRepository.findAll(Sort.by(Sort.Direction.DESC, "lastModifiedDate")));
//		return "udhoadon";
//	}

    @GetMapping("edit_hoadon/{id}")
    public String editHoaDon(Model model, @PathVariable("id") HoaDon hoaDon) {
        model.addAttribute("hoaDon", hoaDon);
        model.addAttribute("idHD", hoaDon.getId());
        model.addAttribute("listCTSP", ctspRepository.findAll(Sort.by(Sort.Direction.DESC, "lastModifiedDate")));
        model.addAttribute("listHDCT", hoaDonChiTietRepository.getListByHoaDon(hoaDon.getId()));
        return "udhoadon";
    }

    @PostMapping("edit_hoadon/{idHD}/add/{id}")
    public String addSPtoHoaDon(Model model, @PathVariable("idHD") HoaDon hoaDon, @PathVariable("id") ChiTietSP chiTietSP, @RequestParam("soluongMua") String soLuong){
        HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
        hoaDonChiTiet.setHoaDon(hoaDon);
        hoaDonChiTiet.setChiTietSP(chiTietSP);
        hoaDonChiTiet.setDonGia(chiTietSP.getDonGia());
        hoaDonChiTiet.setSoLuong(Integer.valueOf(soLuong));
        hoaDonChiTietRepository.save(hoaDonChiTiet);
//        hoaDon.setThanhTien(hoaDonChiTiet.getDonGia().multiply(BigDecimal.valueOf(hoaDonChiTiet.getSoLuong())));
//        model.addAttribute("hoaDon", hoaDon);
        model.addAttribute("listHDCT", hoaDonChiTietRepository.getListByHoaDon(hoaDon.getId()));
        return "redirect:/sneaker/edit_hoadon/" + hoaDon.getId();
    }
}
