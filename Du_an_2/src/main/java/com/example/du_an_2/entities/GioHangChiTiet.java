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
@Table(name = "gio_hang_chi_tiet")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class GioHangChiTiet extends AuditEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_gio_hang")
    private GioHang gioHang;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_ctsp")
    private ChiTietSP chiTietSP;

    @Column(name = "so_luong")
    private int soLuong;

    @Column(name = "don_gia")
    private BigDecimal donGia;

    @Column(name = "trang_thai_xoa")
    private Integer trangThaiXoa = 0;
}
