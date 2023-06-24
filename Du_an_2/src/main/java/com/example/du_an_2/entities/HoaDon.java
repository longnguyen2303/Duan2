package com.example.du_an_2.entities;

import com.example.du_an_2.entities.base.AuditEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "hoa_don")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class HoaDon extends AuditEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ngay_tao")
    private Date ngayTao;

    @Column(name = "ngay_thanh_toan")
    private Date ngayThanhToan;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_khuyen_mai")
    private KhuyenMai khuyenMai;

    @Column(name = "phan_tram_giam_gia")
    private float phanTramGiamgia;

    @Column(name = "thanh_tien")
    private BigDecimal thanhTien;

    @Column(name = "tien_ship")
    private BigDecimal tienShip;

    @Column(name = "trang_thai")
    private Integer trangThai = 0;

    @Column(name = "hinh_thuc_giao_hang")
    private int hinhThucGiaoHang;

    @Column(name = "ten_khach_hang")
    private String tenKhachHang;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_nhan_vien")
    private NhanVien nhanVien;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_khach_hang")
    private KhachHang khachHang;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_dia_chi")
    private DiaChi diaChi;

    @Column(name = "ma_giao_dich")
    private String ma_giao_dich;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_httt")
    private HinhThucThanhToan hinhThucThanhToan;
}
