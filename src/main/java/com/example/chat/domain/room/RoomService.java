package com.example.chat.domain.room;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class RoomService {

    private final RoomRepository roomRepository;

    @Transactional
    public void saveRoom(Room room) {
        roomRepository.save(room);
    }

    /*
    @Transactional
    public void updateItem(Long itemId, String name, int price, int stockQuantity) {
        Item item = itemRepository.findOne(itemId);
        item.setName(name);
        item.setPrice(price);
        item.setStockQuantity(stockQuantity);
    }

     */

    public List<Room> findRooms() {
        return roomRepository.findAll();
    }

    public Room findOne(Long roomId) {
        return roomRepository.findById(roomId);
    }



}
