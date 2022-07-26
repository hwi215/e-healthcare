package com.example.chat.domain.item;

import com.example.chat.domain.room.Room;
import com.example.chat.domain.room.RoomForm;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.time.LocalDateTime;
import java.util.List;


@Controller
@RequiredArgsConstructor
public class ItemController {

    private final ItemService itemService;
    @GetMapping(value = "/items/new")
    public String createForm(Model model) {
        model.addAttribute("form", new RoomForm());
        return "items/createItemForm";
    }
    @PostMapping(value = "/items/new")
    public String create(ItemForm form) {
        Item item = new Item();
        item.setName(form.getName());

        item.setPrice(form.getPrice());
        item.setQuantity(form.getQuantity());
        item.setNote(form.getNote());
        itemService.saveItem(item);
        return "menu/gj";
    }

    /**
     * 상품 목록
     */
    @GetMapping(value = "/items")
    public String list(Model model) {
        System.out.println("시작");
        List<Item> items = itemService.findItems();
        model.addAttribute("item", items);
        return "items/itemList";
    }
}
