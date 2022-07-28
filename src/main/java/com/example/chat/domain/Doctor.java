package com.example.chat.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Getter @Setter
public class Doctor {

    @Id @GeneratedValue
    private Long id;

    private String username;

    private String password;

    private String name;

    private String email;

    private String phoneN1;
    private String phoneN2;
    private String phoneN3;

    private String gender;

    private String nationality; // 국적

    private String role;

    private String doctorNum; // 면허번호

    private LocalDateTime createDate;


}
