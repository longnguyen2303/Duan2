package com.example.du_an_2.entities.listener;

import com.example.du_an_2.entities.base.AuditEntity;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;

import java.util.Calendar;


public class AuditEntityListener {

    @PrePersist
    private void onCreate(AuditEntity entity) {
        entity.setCreatedDate(getCurrentTime());
        entity.setLastModifiedDate(getCurrentTime());
    }

    @PreUpdate
    private void onUpdate(AuditEntity entity) {
        entity.setLastModifiedDate(getCurrentTime());
    }

    private long getCurrentTime() {
        return Calendar.getInstance().getTimeInMillis();
    }
}
