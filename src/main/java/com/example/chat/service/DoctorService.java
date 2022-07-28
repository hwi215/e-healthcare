package com.example.chat.service;

import com.example.chat.domain.Doctor;
import com.example.chat.domain.Member;
import com.example.chat.repository.DoctorRepository;
import com.example.chat.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class DoctorService {

    private final DoctorRepository doctorRepository;


    /**
     * 회원 가입
     */
    @Transactional
    public Long join(Doctor doctor) {

        //validateDuplicateMember(doctor); //중복 회원 검증
        doctorRepository.save(doctor);
        return doctor.getId();
    }

    private void validateDuplicateMember(Doctor doctor) {
        List<Doctor> findMembers = doctorRepository.findByName(doctor.getUsername());
        if (!findMembers.isEmpty()) {
            throw new IllegalStateException("이미 존재하는 회원입니다.");
        }
    }

    //회원 전체 조회
    public List<Doctor> findMembers() {
        return doctorRepository.findAll();
    }

    public Doctor findOne(Long memberId) {
        return doctorRepository.findOne(memberId);
    }

}
