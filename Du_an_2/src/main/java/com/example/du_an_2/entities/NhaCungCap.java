package com.example.du_an_2.entities;


import com.example.du_an_2.entities.base.AuditEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;


@Entity
@Table(name = "ncc")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NhaCungCap extends AuditEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "trang_thai_xoa")
    private Integer trangThaiXoa = 0;
}
