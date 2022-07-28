package com.example.chat.repository;

import com.example.chat.domain.Doctor;
import com.example.chat.domain.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Repository
@RequiredArgsConstructor
public class DoctorRepository {

    private final EntityManager em;

    public void save(Doctor doctor) {
        em.persist(doctor);
    }

    public Doctor findOne(Long id) {
        return em.find(Doctor.class, id);
    }

    public List<Doctor> findAll() {
        return em.createQuery("select m from Doctor m", Doctor.class)
                .getResultList();
    }

    public List<Doctor> findByName(String name) {
        return em.createQuery("select m from Doctor m where m.name = :name", Doctor.class)
                .setParameter("name", name)
                .getResultList();
    }

    private static Map<Long, Doctor> store = new HashMap<>(); //static 사용


    public Doctor findById(Long id) {
        return store.get(id);
    }

    public Optional<Doctor> findByUserName(String username) {
        return findAll().stream()
                .filter(m -> m.getUsername().equals(username))
                .findFirst();
    }

    public void clearStore() {
        store.clear();
    }
}
