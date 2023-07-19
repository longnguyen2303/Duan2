package com.example.du_an_2.repositories;

import com.example.du_an_2.entities.ChiTietSP;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface CTSPRepository extends JpaRepository<ChiTietSP, UUID> {

	@Query("select a from ChiTietSP  a where a.sanPham.ten like concat('%' , ?1 , '%')" +
			" or a.hang.ten like concat('%', ?1 , '%') or a.mauSac.ten like concat('%', ?1, '%') " +
			" or a.sanPham.ma like concat('%', ?1, '%') or a.chatLieu.ten like concat('%', ?1, '%') " +
			" or a.nhaCungCap.ten like concat('%', ?1, '%') or a.kichThuoc.ten like concat('%', ?1, '%')")
	Page<ChiTietSP> getListBySearch(String ten, Pageable pageable);

	@Query(value = "SELECT * FROM chi_tiet_san_pham WHERE id_hang = ?1", nativeQuery = true)
	List<ChiTietSP> getCTSPbyid(UUID id);
}
