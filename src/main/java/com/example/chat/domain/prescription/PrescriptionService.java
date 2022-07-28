package com.example.chat.domain.prescription;

import com.example.chat.domain.item.Item;
import com.example.chat.domain.item.ItemRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor

public class PrescriptionService {
    private final PrescriptionRepository prescriptionRepository;

    @Transactional
    public void savePrescription(Prescription prescription) {
        prescriptionRepository.save(prescription);
    }
    public List<Prescription> findPrescriptions() {
        return prescriptionRepository.findAll();
    }
    public Prescription findOne(Long id) {
        return prescriptionRepository.findOne(id);
    }
}