package com.example.du_an_2.repositories;

import com.example.du_an_2.entities.NhaCungCap;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.UUID;

@Repository
public interface NhaCungCapRepository extends JpaRepository<NhaCungCap, UUID>  {
    NhaCungCap findNhaCungCapByMa(String ma);
}
