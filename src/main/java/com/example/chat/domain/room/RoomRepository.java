package com.example.chat.domain.room;

import com.example.chat.domain.Member;
import com.example.chat.domain.item.Item;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.*;


@Repository
@RequiredArgsConstructor
public class RoomRepository {

    private final EntityManager em;

    public void save(Room room) {
        em.persist(room);
    }

    public Room findOne(Long id) {
        return em.find(Room.class, id);
    }

    public List<Room> findAll() {
        return em.createQuery("select m from Room m", Room.class)
                .getResultList();
    }

    public List<Room> findByName(String name) {
        return em.createQuery("select m from Room m where m.name = :name", Room.class)
                .setParameter("name", name)
                .getResultList();
    }

    private static Map<Long, Room> store = new HashMap<>(); //static 사용


    public Room findById(Long id) {
        return store.get(id);
    }

    /*
    public Optional<Room> findByUserName(String username) {
        return findAll().stream()
                .filter(m -> m.getUsername().equals(username))
                .findFirst();
    }

     */

    public void clearStore() {
        store.clear();
    }
}
