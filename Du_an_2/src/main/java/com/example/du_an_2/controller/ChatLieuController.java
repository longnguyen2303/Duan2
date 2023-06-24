package com.example.du_an_2.controller;

import com.example.du_an_2.entities.ChatLieu;
import com.example.du_an_2.entities.KichThuoc;
import com.example.du_an_2.entities.MauSac;
import com.example.du_an_2.repositories.ChatLieuRepository;
import com.example.du_an_2.viewmodel.ChatLieuViewModel;
import jakarta.validation.Valid;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.UUID;

@Controller
@RequestMapping("chat-lieu")
public class ChatLieuController {
    @Autowired
    private ChatLieuRepository chatLieuRepository;

    @GetMapping("danh-sach")
    public String danhSach(Model model, @RequestParam(name = "page", defaultValue = "0") Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
        Page<ChatLieu> page = chatLieuRepository.findAll(pageable);
        model.addAttribute("listChatLieu", page);
//        model.addAttribute("listMau", mauSacRepository.findAll(Sort.by(Sort.Direction.ASC, "lastModifiedDate")));
        return "admin/crud/chatlieu/chat-lieu-hien-thi";
    }

    @GetMapping("form-add")
    public String formadd(Model model) {
        ChatLieuViewModel chatLieuViewModel = new ChatLieuViewModel();
        chatLieuViewModel.setMa("ma01");
        chatLieuViewModel.setTen("ten01");
        model.addAttribute("chatlieu",chatLieuViewModel);
        return "admin/crud/chatlieu/chat-lieu-add";
    }

    @PostMapping("add")
    public String addChatLieu(Model model, @Valid @ModelAttribute("chatlieu") ChatLieu chatlieu, BindingResult result,
                              ChatLieuViewModel chatLieuViewModel) {
        if (result.hasErrors()) {
            return "admin/crud/chatlieu/chat-lieu-hien-thi";
        }else{
            ChatLieu chatLieu= new ChatLieu();
            chatLieu.setMa(chatLieuViewModel.getMa());
            chatLieu.setTen(chatLieuViewModel.getTen());
            chatLieuRepository.save(chatLieu);
        }
        return "admin/crud/chatlieu/chat-lieu-add";
    }
    @PostMapping("import")
    public String importFile(Model model, @RequestParam("file") MultipartFile file,
                             @RequestParam(name = "page", defaultValue = "0") Integer pageNo) throws IOException, SQLException {
        if (file == null || file.isEmpty()) {
            Pageable pageable = PageRequest.of(pageNo, 5, Sort.by(Sort.Direction.ASC, "lastModifiedDate"));
            Page<ChatLieu> page = chatLieuRepository.findAll(pageable);
            model.addAttribute("listChatLieu", page);
            return "admin/crud/chatlieu/chat-lieu-hien-thi";
        }
        InputStream inputStream = file.getInputStream();
        Workbook workbook = new XSSFWorkbook(inputStream);
        Sheet sheet = workbook.getSheetAt(0);

        for (Row row : sheet) {
            String ma = row.getCell(0).getStringCellValue();
            String ten = row.getCell(1).getStringCellValue();
            ChatLieu existingChatLieu = chatLieuRepository.findChatLieuByMa(ma);
            if (existingChatLieu == null) {
                ChatLieu chatLieu = new ChatLieu();
                chatLieu.setMa(ma);
                chatLieu.setTen(ten);
                chatLieuRepository.save(chatLieu);
            }
        }
        workbook.close();
        return "admin/crud/chatlieu/chat-lieu-hien-thi";
    }
//    @GetMapping("delete/{ma}")
//    public String deleteChatLieu(Model model, @PathVariable UUID id){
//        ChatLieu chatLieu = chatLieuRepository.deleteById(id);
//        model.addAttribute("delete", chatLieuRepository.findAll());
//        return "admin/crud/chatlieu/chat-lieu-hien-thi";
//    }
    @GetMapping("form-update/{ma}")
    public String formupdate(Model model, @PathVariable String ma) {
        ChatLieu chatLieu = chatLieuRepository.findChatLieuByMa(ma);
        model.addAttribute("update",chatLieu);
        return "admin/crud/chatlieu/chat-lieu-update";
    }
}
