package com.example.du_an_2.entities;

import com.example.du_an_2.entities.base.AuditEntity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "hinh_anh")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class HinhAnh extends AuditEntity {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(name = "link_anh")
    private String linkAnh;

    @Column(name = "ten")
    private String ten;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_ctsp")
    private ChiTietSP chiTietSP;

    @Column(name = "trang_thai_xoa")
    private Integer trangThaiXoa = 0;
}
