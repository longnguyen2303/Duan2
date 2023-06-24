package com.example.du_an_2.entities;


import com.example.du_an_2.entities.base.AuditEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "khuyen_mai")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class KhuyenMai extends AuditEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_loai_khuyen_mai")
    private LoaiKhuyenMai loaiKhuyenMai;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "ngay_bat_dau")
    private Date ngayBatDau;

    @Column(name = "ngay_ket_thuc")
    private Date ngayKetThuc;

    @Column(name = "gia_tri")
    private double giaTri;

    @Column(name = "trang_thai_xoa")
    private Integer trangThaiXoa = 0;
}
