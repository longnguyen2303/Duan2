package com.example.du_an_2.viewmodel;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NhanVienViewModel {

    @NotBlank(message = "Không được để trống")
    private String ma;

    @NotBlank(message = "Không được để trống")
    @Length(max = 30, message = "Tên không được vượt quá 30 ký tự")
    private String hoTen;

    @NotBlank(message = "Không được để trống")
    private String diaChi;

    @NotBlank(message = "Không được để trống")
    private String email;

    @NotBlank(message = "Không được để trống")
    private String sdt;

    private int gioiTinh;
}
