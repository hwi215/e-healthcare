package com.example.chat.controller;

import com.example.chat.domain.room.Room;
import com.example.chat.domain.room.RoomForm;
import com.example.chat.domain.room.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;
@Controller
@RequiredArgsConstructor
public class RoomController {
    private final RoomService roomService;

  //  @GetMapping(value = "/items/new")
    public String createForm(Model model) {
        model.addAttribute("form", new RoomForm());
        return "items/createItemForm";
    }
  //  @PostMapping(value = "/items/new")
    public String create(RoomForm form) {
        Room room = new Room();
        room.setName(form.getName());
        room.setPrice(form.getPrice());
        room.setStockQuantity(form.getStockQuantity());
        room.setAuthor(form.getAuthor());
        room.setIsbn(form.getIsbn());
        roomService.saveRoom(room);
        return "redirect:/items";
    }

    /**
     * 상품 목록
     */
   // @GetMapping(value = "/items")
    public String list(Model model) {
        List<Room> rooms = roomService.findRooms();
        model.addAttribute("rooms", rooms);
        return "items/itemList.jsp";
    }



}