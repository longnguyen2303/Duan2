package com.example.du_an_2.repositories;


import com.example.du_an_2.entities.ChiTietSP;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface CTSPRepository extends JpaRepository<ChiTietSP, UUID> {
}
