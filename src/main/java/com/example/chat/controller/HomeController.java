package com.example.chat.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class HomeController {

    @RequestMapping("/")
    public String home() {
        log.info("home controller");
        return "home";
    }


    @GetMapping("/auth/findId")
    public String findIdForm() {
        return "auth/fndId";
    }


    @GetMapping("/auth/findPw")
    public String findPwForm() {
        return "auth/findPw";
    }


    @GetMapping("/auth/signupStep1")
    public String signupStep1Form() {
        return "/auth/signupStep1";
    }

    @GetMapping("/auth/signupStep2")
    public String signupStep2Form() {
        return "/auth/signupStep2";
    }

    @GetMapping("/auth/signupStep2Doctor")
    public String signupStep2DoctorForm() {
        return "/auth/signupStep2Doctor";
    }


    @GetMapping("/auth/signupStep3")
    public String signupStep3Form() {
        return "/auth/signupStep3";
    }

    @GetMapping("/auth/signupStep3Doctor")
    public String signupStep3DoctorForm() {
        return "/auth/signupStep3Doctor";
    }


    @GetMapping("/auth/signupStep4")
    public String signupStep4Form() {
        return "/auth/signupStep4";
    }

    @GetMapping("/auth/login2")
    public String login2Form() {
        return "login2";
    }

    @GetMapping("/menu/medicalField")
    public String medicalField() {
        return "menu/medicalField";
    }


    @GetMapping("/menu/gj")
    public String option1Form() {
        return "menu/gj";
    }

    @GetMapping("/menu/mypage")
    public String mypage() {
        return "menu/mypage";
    }

    @GetMapping("/menu/mypageDoctor")
    public String mypageDoctor() {
        return "menu/mypageDoctor";
    }

    @GetMapping("/menu/mypageDoctor2")
    public String mypageDoctor2() {
        return "menu/mypageDoctor2";
    }
    @GetMapping("/menu/mypageD")
    public String mypageD() {
        return "menu/mypageD";
    }


    @GetMapping("/main")
    public String menuForm() {
        return "menu";
    }

    @GetMapping("/menu/prescription")
    public String prescription() {
        return "menu/prescription";
    }


    @GetMapping("/auth/main")
    public String menu2Form() {
        return "menu";
    }

    @GetMapping("/menu/reservation")
    public String reservation() {
        return "menu/reservation";
    }


    @GetMapping("/menu/modal")
    public String modal() {
        return "menu/modal";
    }
}
