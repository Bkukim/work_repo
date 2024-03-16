package org.example.modelexam.controller.exam01;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * packageName : org.example.modelexam.controller.exam01
 * fileName : HomeController
 * author : PC
 * date : 2024-03-14
 * description :
 * 요약 :
 * <p>
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2024-03-14         PC          최초 생성
 */
@Controller
public class HomeController {

    @GetMapping("/exam01/home")
    public String home(Model model){
        return "/exam01/home/home.jsp";
    }
}
