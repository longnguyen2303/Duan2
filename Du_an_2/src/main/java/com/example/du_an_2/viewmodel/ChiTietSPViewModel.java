package com.example.du_an_2.viewmodel;


import jakarta.validation.constraints.*;
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

    @Positive(message = "Số lượng phải lớn hơn 0")
    private int soLuong;

    @NotNull(message = "Không được để trống trường này")
    @Positive(message = "Giá nhập phải lớn hơn 0")
    private BigDecimal donGia;

    @NotNull(message = "Không được để trống trường này")
    @Positive(message = "Giá nhập phải lớn hơn 0")
    private BigDecimal giaBan;

//    @NotNull(message = "Vui lòng chọn 1 ảnh")
    private String hinhAnh;

    @NotBlank(message = "Không được để trống trường này")
    @Positive(message = "Giá nhập phải lớn hơn 0")
    private String moTa;

    private int trangThai;
}
