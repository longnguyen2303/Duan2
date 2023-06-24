package com.example.du_an_2.repositories;

import com.example.du_an_2.entities.ChatLieu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ChatLieuRepository extends JpaRepository<ChatLieu, UUID> {
    ChatLieu findChatLieuByMa(String ma);
}
