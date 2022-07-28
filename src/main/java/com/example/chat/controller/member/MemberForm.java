package com.example.chat.controller.member;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import java.time.LocalDateTime;

@Getter @Setter
public class MemberForm {


    @NotEmpty(message = "회원 이름은 필수 입니다")
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

}
