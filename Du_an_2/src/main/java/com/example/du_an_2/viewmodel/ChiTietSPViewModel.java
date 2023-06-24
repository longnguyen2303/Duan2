package com.example.du_an_2.viewmodel;


import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ChiTietSPViewModel {

    private UUID sanPham;

    private UUID hang;

    private UUID kichThuoc;

    private UUID mauSac;

    private UUID nhaCungCap;

    private UUID chatLieu;

    private int soLuong;

    private BigDecimal donGia;

    private BigDecimal giaBan;

    @NotBlank(message = "Không được để trống trường này")
    private String moTa;

    private int trangThai;
}
