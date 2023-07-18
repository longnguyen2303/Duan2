package com.example.du_an_2.repositories;

import com.example.du_an_2.entities.HoaDonChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface HoaDonChiTietRepository extends JpaRepository<HoaDonChiTiet, UUID> {

    @Query("select a from HoaDonChiTiet a where a.hoaDon.id = ?1")
    List<HoaDonChiTiet> getListByHoaDon(UUID idHoaDon);
}
