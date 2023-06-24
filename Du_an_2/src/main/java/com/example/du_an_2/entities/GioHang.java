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
@Table(name = "gio_hang")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class GioHang extends AuditEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "ngay_tao")
    private Date ngay_tao;

    @Column(name = "trang_thai")
    private Integer trangThai = 0;

    @Column(name = "ten_khach_hang")
    private String tenKhachHang;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_khach_hang")
    private KhachHang khachHang;

}
