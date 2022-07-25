package com.example.chat.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter @Setter
public class Member {

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

    //private LocalDateTime createDate;


}
