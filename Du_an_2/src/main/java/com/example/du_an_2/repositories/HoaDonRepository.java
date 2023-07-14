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

	@Query(value = " SELECT top 1  *\r\n" + "  FROM hoa_don order by  id desc", nativeQuery = true)
	HoaDon findbymaxid(UUID id);
}
