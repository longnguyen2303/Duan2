package com.example.du_an_2.entities.base;

import com.example.du_an_2.entities.listener.AuditEntityListener;
import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@MappedSuperclass
@EntityListeners(AuditEntityListener.class)
public class AuditEntity {

    @Column(name = "created_date")
    private Long createdDate;

    @Column(name = "last_modified_date")
    private Long lastModifiedDate;
}
