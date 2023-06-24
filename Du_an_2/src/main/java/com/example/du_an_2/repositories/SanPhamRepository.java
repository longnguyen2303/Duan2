package com.example.du_an_2.repositories;

import com.example.du_an_2.entities.SanPham;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface SanPhamRepository extends JpaRepository<SanPham, UUID> {
    SanPham findSanPhamByMa(String ma);
}
