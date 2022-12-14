package com.example.chat.controller.login;

import lombok.Data;

import javax.validation.constraints.NotEmpty;

@Data
public class LoginForm {

    @NotEmpty
    private String username;

    @NotEmpty
    private String password;
}
