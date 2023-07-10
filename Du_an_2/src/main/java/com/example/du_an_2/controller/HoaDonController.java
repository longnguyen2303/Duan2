package com.example.du_an_2.controller;

import com.example.du_an_2.entities.ChiTietSP;
import com.example.du_an_2.entities.HoaDon;
import com.example.du_an_2.repositories.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

@Controller
@RequestMapping("sneaker")
public class HoaDonController {

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @GetMapping("hoa-don")
    public String hoaDon(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo){
        Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.DESC, "lastModifiedDate"));
        Page<HoaDon> page = hoaDonRepository.findAll(pageable);
        model.addAttribute("listHD", page);
        return "qlhoadon";
    }

    @PostMapping("hoa-don/tao-hoa-don")
    public String taoHoaDon(Model model){
        HoaDon hoaDon = new HoaDon();
        LocalDateTime time = LocalDateTime.now();
        String maHd = "HD" + String.valueOf(time.getYear()).substring(2) + time.getMonthValue()
                + time.getDayOfMonth() + time.getHour() + time.getMinute() + time.getSecond();
        hoaDon.setMa(maHd);
        hoaDon.setNgayTao(new Date());
        hoaDon.setHinhThucGiaoHang(0);
        this.hoaDonRepository.save(hoaDon);
        return "redirect:/sneaker/hoa-don";
    }
}
