package com.example.du_an_2.entities;

import com.example.du_an_2.entities.base.AuditEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;


@Entity
@Table(name = "dia_chi")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class DiaChi extends AuditEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "thanh_pho")
    private String thanhPho;

    @Column(name = "quan")
    private String quan;

    @Column(name = "phuong")
    private String phuong;

    @Column(name = "mo_ta")
    private String moTa;

    @Column(name = "trang_thai_xoa")
    private Integer trangThaiXoa = 0;
}
