package com.example.du_an_2.repositories;

import com.example.du_an_2.entities.ChiTietSP;
import com.example.du_an_2.entities.HoaDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, UUID> {

	@Query("select sum(a.donGia*a.soLuong) from HoaDonChiTiet a left join HoaDon b on a.hoaDon.id = b.id where b.ma = ?1")
	Integer tongTienSanPham(String maHoaDon);

	@Query("select a from HoaDon a where a.trangThai = 0 order by a.lastModifiedDate desc")
	List<HoaDon> getListHDTreo();
}
