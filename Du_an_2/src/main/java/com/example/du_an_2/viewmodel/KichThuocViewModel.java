package com.example.du_an_2.viewmodel;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class KichThuocViewModel {
    @NotBlank(message = "Không được để trống")
    private String ma;

    @NotBlank(message = "Không được để trống")
    @Length(max = 30, message = "Tên không được vượt quá 30 ký tự")
    private String ten;
//update code
}
