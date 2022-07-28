package com.example.chat.domain.prescription;

import com.example.chat.domain.prescription.Prescription;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class PrescriptionRepository {

    private final EntityManager em;

    public void save(Prescription prescription) {
        if (prescription.getId() == null) {
            em.persist(prescription);
        } else {
            em.merge(prescription);
        }
    }
    public Prescription findOne(Long id) {
        return em.find(Prescription.class, id);
    }
    public List<Prescription> findAll() {
        return em.createQuery("select i from Prescription i",Prescription.class).getResultList();
    }


}
