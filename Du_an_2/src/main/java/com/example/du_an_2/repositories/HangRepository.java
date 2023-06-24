package com.example.du_an_2.repositories;

import com.example.du_an_2.entities.Hang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface HangRepository extends JpaRepository<Hang, UUID> {
    Hang findHangByMa(String ma);
}
