package com.example.du_an_2.entities;

import com.example.du_an_2.entities.base.AuditEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.UUID;


@Entity
@Table(name = "chi_tiet_san_pham")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ChiTietSP extends AuditEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_san_pham")
    private SanPham sanPham;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_hang")
    private Hang hang;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_kich_thuoc")
    private KichThuoc kichThuoc;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_mau_sac")
    private MauSac mauSac;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_ncc")
    private NhaCungCap nhaCungCap;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_chat_lieu")
    private ChatLieu chatLieu;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_khuyen_mai")
    private KhuyenMai khuyenMai;

    @Column(name = "so_luong")
    private int soLuong;

    @Column(name = "don_gia")
    private BigDecimal donGia;

    @Column(name = "gia_ban")
    private BigDecimal giaBan;

    @Column(name = "mo_ta")
    private String moTa;

    @Column(name = "trang_thai_xoa")
    private Integer trangThaiXoa = 0;

}
