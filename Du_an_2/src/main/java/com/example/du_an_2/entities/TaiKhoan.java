package com.example.du_an_2.entities;

import com.example.du_an_2.entities.base.AuditEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;


@Entity
@Table(name = "tai_khoan")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TaiKhoan extends AuditEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "ten_dang_nhap")
    private String tenDangNhap;

    @Column(name = "mat_khau")
    private String matKhau;

    @Column(name = "vai_tro")
    private Integer vaiTro;

    @Column(name = "trang_thai_xoa")
    private Integer trangThaiXoa = 0;
}
