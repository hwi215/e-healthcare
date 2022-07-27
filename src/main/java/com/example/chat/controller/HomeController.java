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
        return "menu/mainpage";
    }


    @GetMapping("/menu/findId")
    public String findIdForm() {
        return "menu/fndId";
    }


    @GetMapping("/auth/findPw")
    public String findPwForm() {
        return "auth/findPw";
    }


    @GetMapping("/auth/signupStep1")
    public String signupStep1Form() {
        return "auth/signupStep1";
    }

    @GetMapping("/auth/signupStep2")
    public String signupStep2Form() {
        return "auth/signupStep2";
    }

    @GetMapping("/auth/signupStep2Doctor")
    public String signupStep2DoctorForm() {
        return "auth/signupStep2Doctor";
    }


    @GetMapping("/auth/signupStep3")
    public String signupStep3Form() {
        return "auth/signupStep3";
    }

    @GetMapping("/auth/signupStep3Doctor")
    public String signupStep3DoctorForm() {
        return "auth/signupStep3Doctor";
    }


    @GetMapping("/auth/signupStep4")
    public String signupStep4Form() {
        return "auth/signupStep4";
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


    @GetMapping("/menu/dj")
    public String option2Form() {
        return "menu/dj";
    }

    @GetMapping("/menu/bn")
    public String option3Form() {
        return "menu/bn";
    }


    @GetMapping("/menu/sb")
    public String option4Form() {
        return "menu/sb";
    }

    @GetMapping("/menu/sh") // 성형외과
    public String option5Form() {
        return "menu/sh";
    }


    @GetMapping("/menu/sa") // 소아청소년과
    public String option6Form() {
        return "menu/sa";
    }


    @GetMapping("/menu/an") // 안과
    public String option7Form() {
        return "menu/an";
    }


    @GetMapping("/menu/eb") // 이빈후과
    public String option8Form() {
        return "menu/eb";
    }


    @GetMapping("/menu/js") // 정신건강의학과
    public String option9Form() {
        return "menu/js";
    }


    @GetMapping("/menu/jh") // 정형외과
    public String option10Form() {
        return "menu/jh";
    }


    @GetMapping("/menu/pb") // 피부과
    public String option11Form() {
        return "menu/pb";
    }


    @GetMapping("/menu/cg") // 치과
    public String option12Form() {
        return "menu/cg";
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


    @GetMapping("/menu/mainpage")
    public String mainpage() {
        return "menu/mainpage";
    }
}
