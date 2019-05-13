package com.neu.shop.controller.admin;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neu.shop.pojo.*;
import com.neu.shop.service.ChatService;
import com.neu.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin/message")
public class MessageController {

    @Autowired
    private ChatService chatService;

    @Autowired
    private UserService userService;

    @RequestMapping("/showjson")
    @ResponseBody
    public Msg getAllMessages(@RequestParam(value = "page",defaultValue = "1") Integer pn, HttpServletResponse response, Model model) {
        //一页显示几个数据
        PageHelper.startPage(pn, 10);

        List<Chat> chatList = chatService.selectChatByExample(new ChatExample());

        JSONArray jsonArray = new JSONArray();
        for (Chat chat: chatList ) {
            int userId = chat.getSenduser();
            User user = userService.selectByPrimaryKey(userId);
            JSONObject json = new JSONObject();
            json.put("chatid", chat.getChatid());
            json.put("msgcontent", chat.getMsgcontent());
            json.put("username",user.getUsername());
            json.put("email",user.getEmail());
            json.put("telephone",user.getTelephone());
            jsonArray.add(json);
        }

        //显示几个页号
        PageInfo page = new PageInfo(jsonArray,5);

       /* model.addAttribute("pageInfo", page);*/

        return Msg.success("查询成功!").add("pageInfo", page);
    }

    @RequestMapping("/show")
    public String userManage() {
        return "message";
    }

    @RequestMapping(value = "/delete/{userid}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteUser(@PathVariable("userid")Integer userid) {
//        chatService.deleteUserById(userid);
        return Msg.success("删除成功!");
    }
}
