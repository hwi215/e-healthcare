package com.example.chat.repository;

import com.example.chat.domain.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.*;

@Repository
@RequiredArgsConstructor
public class MemberRepository {

    private final EntityManager em;

    public void save(Member member) {
        em.persist(member);
    }

    public Member findOne(Long id) {
        return em.find(Member.class, id);
    }

    public List<Member> findAll() {
        return em.createQuery("select m from Member m", Member.class)
                .getResultList();
    }

    public List<Member> findByName(String name) {
        return em.createQuery("select m from Member m where m.name = :name", Member.class)
                .setParameter("name", name)
                .getResultList();
    }

    private static Map<Long, Member> store = new HashMap<>(); //static 사용


    public Member findById(Long id) {
        return store.get(id);
    }

    public Optional<Member> findByUserName(String username) {
        return findAll().stream()
                .filter(m -> m.getUsername().equals(username))
                .findFirst();
    }

    public void clearStore() {
        store.clear();
    }
}
