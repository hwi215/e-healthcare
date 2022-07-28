package com.example.chat.domain.prescription;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PrescriptionForm {

    private String name; // 환자name
    private String number; // 환자 주민번호

    private String doctorName; // 의사 name
    private String doctorNum; // 의사 면허번호

    private String medicineName; // 의약품 이름
    private String dosage; // 1회 투약량
    private String times; // 1일 투여횟수
    private String totalDay; // 총 투약일수

    private String healthcare; // 의료기관 명
}
