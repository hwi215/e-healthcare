package com.example.chat.domain.prescription;

import com.example.chat.domain.item.Item;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class PrescriptionController {

    private final PrescriptionService prescriptionService;
    @GetMapping(value = "/new/reservation")
    public String createForm(Model model) {
        model.addAttribute("form", new PrescriptionForm());
        return "menu/reservation";
    }
    @PostMapping(value = "/new/reservation") // 처방전 등록
    public String create(PrescriptionForm form) {
        Prescription prescription = new Prescription();
        prescription.setName(form.getName());

        prescription.setNumber(form.getNumber());
        prescription.setDoctorName(form.getDoctorName());
        prescription.setDoctorNum(form.getDoctorNum());
        prescription.setDosage(form.getDosage());
        prescription.setTimes(form.getTimes());
        prescription.setTotalDay(form.getTotalDay());
        prescription.setHealthcare(form.getHealthcare());
        prescriptionService.savePrescription(prescription);
        return "menu/reservation2"; // 결과지
    }

    /**
     * 상품 목록
     */
    @GetMapping(value = "/rescription/list")
    public String list(Model model) {
        System.out.println("시작");
        List<Prescription> prescriptions = prescriptionService.findPrescriptions();
        model.addAttribute("prescription", prescriptions);
        return "menu/mypageDoctor2";
    }

}
