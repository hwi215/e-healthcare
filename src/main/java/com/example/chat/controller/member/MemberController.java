package com.example.chat.controller.member;

import com.example.chat.domain.Doctor;
import com.example.chat.domain.Member;
import com.example.chat.service.DoctorService;
import com.example.chat.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;
    private final DoctorService doctorService;

    @GetMapping("/members/new")
    public String createForm(Model model) { // 회원가입
        model.addAttribute("memberForm", new MemberForm());
        return "members/createMemberForm";
    }

    @PostMapping("/auth/signup")
    public String create(@Valid MemberForm form, BindingResult result) {

        if (result.hasErrors()) {
            return "members/createMemberForm";
        }

        //Address address = new Address(form.getCity(), form.getStreet(), form.getZipcode());

        Member member = new Member();
        member.setUsername(form.getUsername());
        member.setPassword(form.getPassword());

        member.setName(form.getName());
        member.setEmail(form.getEmail());

        member.setGender(form.getGender());
        member.setNationality(form.getNationality());

        member.setPhoneN1(form.getPhoneN1());
        member.setPhoneN2(form.getPhoneN2());
        member.setPhoneN3(form.getPhoneN3());

        member.setRole(form.getRole());

        memberService.join(member);
        System.out.println("회원가입 완료");
        return "auth/signupStep4";
    }

    @GetMapping("/members")
    public String list(Model model) {
        List<Member> members = memberService.findMembers();
        model.addAttribute("members", members);
        return "members/memberList";
    }

    // 추가

    //private final AuthService authService;

    /*
    @GetMapping("/auth/signin")
    public String signinForm() {

        return "auth/signin2";
    }

     */

    @GetMapping("/auth/signup/Step4")
    public String signupFinalForm() {

        return "auth/signupStep4";
    }

    @GetMapping("/auth/signup")
    public String signupForm() {
        return "auth/signup";
    }


    /*
    @PostMapping("/auth/signup")
    public String signup(@Valid SignupDto signupDto, BindingResult bindingResult) { // key=value (x-www-form-urlencoded)

        User user = signupDto.toEntity();
        authService.회원가입(user);
        System.out.println("회원가입 완료");

        // 로그를 남기는 후처리!!
        return "auth/signupStep4";

    }
    @PostMapping("/auth/signup/Doctor")
    public String signupStep1Doctor(@Valid SignupDto signupDto,  BindingResult bindingResult) { // key=value (x-www-form-urlencoded)

        User user = signupDto.toEntity();
        authService.의사회원가입(user);
        System.out.println("의사 회원가입 완료");
        // 로그를 남기는 후처리!!
        return "auth/signupStep4";

    }

     */

    @PostMapping("/auth/signup/doctor")
    public String create2(@Valid DoctorForm form, BindingResult result) {

        if (result.hasErrors()) {
            return "auth/signupStep1";
        }
        Doctor doctor = new Doctor();
        doctor.setUsername(form.getUsername());
        doctor.setPassword(form.getPassword());

        doctor.setName(form.getName());
        doctor.setEmail(form.getEmail());

        doctor.setGender(form.getGender());
        doctor.setNationality(form.getNationality());

        doctor.setPhoneN1(form.getPhoneN1());
        doctor.setPhoneN2(form.getPhoneN2());
        doctor.setPhoneN3(form.getPhoneN3());

        doctor.setRole(form.getRole());

        doctorService.join(doctor);
        System.out.println("의사 회원가입 완료");
        return "auth/signupStep4";
    }
}
