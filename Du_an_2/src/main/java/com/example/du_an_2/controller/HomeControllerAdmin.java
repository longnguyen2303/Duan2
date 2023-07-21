package com.example.du_an_2.controller;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.du_an_2.entities.ChatLieu;
import com.example.du_an_2.entities.ChiTietSP;
import com.example.du_an_2.entities.Hang;
import com.example.du_an_2.entities.HoaDon;
import com.example.du_an_2.entities.HoaDonChiTiet;
import com.example.du_an_2.entities.KichThuoc;
import com.example.du_an_2.entities.MauSac;
import com.example.du_an_2.entities.NhaCungCap;
import com.example.du_an_2.entities.SanPham;
import com.example.du_an_2.repositories.CTSPRepository;
import com.example.du_an_2.repositories.ChatLieuRepository;
import com.example.du_an_2.repositories.HangRepository;
import com.example.du_an_2.repositories.HinhAnhRepository;
import com.example.du_an_2.repositories.HoaDonChiTietRepository;
import com.example.du_an_2.repositories.HoaDonRepository;
import com.example.du_an_2.repositories.KichThuocRepository;
import com.example.du_an_2.repositories.MauSacRepository;
import com.example.du_an_2.repositories.NhaCungCapRepository;
import com.example.du_an_2.repositories.SanPhamRepository;
import com.example.du_an_2.viewmodel.ChiTietSPViewModel;

import jakarta.validation.Valid;

@Controller
@RequestMapping("admin")
public class HomeControllerAdmin {
	@Autowired
	private HoaDonRepository hoaDonRepository;

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

	@Autowired
	private HoaDonChiTietRepository hoaDonChiTietRepository;

	@GetMapping("dashboard")
	public String home(Model model) {
		return "admin/homeAdmin";
	}

	@GetMapping("dashboard/quanlysp")
	public String qlsp(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
		Page<ChiTietSP> page = ctspRepository.findAll(pageable);
		model.addAttribute("listCTSP", page);
		return "admin/quanlysp";
	}

	@GetMapping("dashboard/form-add")
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
		return "admin/addsp";
	}

	@PostMapping("dashboard/add")
	public String add(Model model, @Valid @ModelAttribute("ct") ChiTietSPViewModel chiTietSPViewModel,
			BindingResult result, @RequestParam("mauSac") String idmauSac, @RequestParam("sanPham") String idsanPham,
			@RequestParam("chatLieu") String idchatLieu, @RequestParam("hang") String idhang,
			@RequestParam("kichThuoc") String idkichThuoc, @RequestParam("nhaCungCap") String idncc,
			@RequestParam("anh") MultipartFile linkAnh) {
		if (result.hasErrors()) {
			model.addAttribute("listMauSac", mauSacRepository.findAll());
			model.addAttribute("listHang", hangRepository.findAll());
			model.addAttribute("listNCC", nhaCungCapRepository.findAll());
			model.addAttribute("listSP", sanPhamRepository.findAll());
			model.addAttribute("listKT", kichThuocRepository.findAll());
			model.addAttribute("listChatLieu", chatLieuRepository.findAll());
			return "admin/crud/chitietsanpham/ctsp-add";
		} else {
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
			if (!linkAnh.isEmpty()) {
				chiTietSP.setHinhAnh(linkAnh.getOriginalFilename());
			}
			this.ctspRepository.save(chiTietSP);
		}
		return "redirect:/admin/dashboard/quanlysp";
	}

	@GetMapping("dashboard/quanlysp/search")
	public String productSearch(Model model, @RequestParam("inputsearch") String input,
			@RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.DESC, "lastModifiedDate"));
		Page<ChiTietSP> page = ctspRepository.getListBySearch(input, pageable);
		model.addAttribute("listCTSP", page);
		model.addAttribute("inputsearch", input);
		return "admin/quanlysp";
	}

	@GetMapping("dashboard/banhangquay")
	public String banhangquay(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
		Pageable pageable = PageRequest.of(pageNo, 4, Sort.by(Sort.Direction.DESC, "lastModifiedDate"));
		Page<HoaDon> page = hoaDonRepository.findAll(pageable);
		model.addAttribute("listHD", page);
		return "admin/banhangtaiquay";
	}

	@PostMapping("dashboard/hoa-don/tao-hoa-don")
	public String taoHoaDon(Model model) {
		HoaDon hoaDon = new HoaDon();
		LocalDateTime time = LocalDateTime.now();
		String maHd = "HD" + String.valueOf(time.getYear()).substring(2) + time.getMonthValue() + time.getDayOfMonth()
				+ time.getHour() + time.getMinute() + time.getSecond();
		hoaDon.setMa(maHd);
		hoaDon.setNgayTao(new Date());
		hoaDon.setHinhThucGiaoHang(0);
		this.hoaDonRepository.save(hoaDon);
		model.addAttribute("listHDCT", hoaDonChiTietRepository.getListByHoaDon(hoaDon.getId()));
		return "redirect:/admin/dashboard/edit_hoadon/" + hoaDon.getId();
	}

	@GetMapping("dashboard/edit_hoadon/{id}")
	public String editHoaDon(Model model, @PathVariable("id") HoaDon hoaDon) {
		model.addAttribute("hoaDon", hoaDon);
		model.addAttribute("idHD", hoaDon.getId());
		if(hoaDonRepository.tongTienSanPham(hoaDon.getMa()) == null){
			model.addAttribute("tongTien", 0);
		}else{
			model.addAttribute("tongTien", hoaDonRepository.tongTienSanPham(hoaDon.getMa()));
		}
		model.addAttribute("listCTSP", ctspRepository.findAll(Sort.by(Sort.Direction.DESC, "lastModifiedDate")));
		model.addAttribute("listHDCT", hoaDonChiTietRepository.getListByHoaDon(hoaDon.getId()));
		return "admin/edithoadonquay";
	}

	@PostMapping("dashboard/edit_hoadon/{idHD}/add/{id}")
	public String addSPtoHoaDon(Model model, @PathVariable("idHD") HoaDon hoaDon,
			@PathVariable("id") ChiTietSP chiTietSP, @RequestParam("soluongMua") String soLuong) {
		HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
		hoaDonChiTiet.setHoaDon(hoaDon);
		hoaDonChiTiet.setChiTietSP(chiTietSP);
		hoaDonChiTiet.setDonGia(chiTietSP.getGiaBan());
		hoaDonChiTiet.setSoLuong(Integer.valueOf(soLuong));
		hoaDonChiTietRepository.save(hoaDonChiTiet);
//        hoaDon.setThanhTien(hoaDonChiTiet.getDonGia().multiply(BigDecimal.valueOf(hoaDonChiTiet.getSoLuong())));
//        model.addAttribute("hoaDon", hoaDon);
		if(hoaDonRepository.tongTienSanPham(hoaDon.getMa()) == null){
			model.addAttribute("tongTien", 0);
		}else{
			model.addAttribute("tongTien", hoaDonRepository.tongTienSanPham(hoaDon.getMa()));
		}
		model.addAttribute("listHDCT", hoaDonChiTietRepository.getListByHoaDon(hoaDon.getId()));
		return "redirect:/admin/dashboard/edit_hoadon/" + hoaDon.getId();
	}
}
