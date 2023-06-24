package com.example.du_an_2.repositories;

import com.example.du_an_2.entities.KichThuoc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface KichThuocRepository extends JpaRepository<KichThuoc, UUID> {
    KichThuoc findKichThuocByMa(String ma);
}
