package com.example.chat.domain.prescription;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Getter
@Setter
public class Prescription {

    @Id
    @GeneratedValue
    private Long id;

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
