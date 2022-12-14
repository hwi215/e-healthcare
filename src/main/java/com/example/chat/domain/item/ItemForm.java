package com.example.chat.domain.item;

import lombok.Getter;
import lombok.Setter;
@Getter @Setter
public class ItemForm {

    private String name;
    private String price;
    private String quantity;

    private String note; // 증상기록
    private String data;
}
