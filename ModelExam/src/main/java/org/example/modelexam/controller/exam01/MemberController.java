package org.example.modelexam.controller.exam01;

import  org.example.modelexam.model.Member;
import org.example.modelexam.service.exam01.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

/**
 * packageName : org.example.modelexam.controller.exam01
 * fileName : MemberController
 * author : PC
 * date : 2024-03-13
 * description :
 * 요약 :
 * <p>
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2024-03-13         PC          최초 생성
 */
@Controller
@RequestMapping("/exam01")
public class MemberController {


    private final MemberService memberService;

    @Autowired
    public MemberController(MemberService memberService) {
        this.memberService = memberService;
    }

    @GetMapping("/member")
    public String getMemberAll(Model model){
        List<Member> list = memberService.findAll();
        model.addAttribute("list", list);
        return "exam01/member/member_all.jsp";
    }

    @GetMapping("/member/{eno}")
    public String getMemberByEno(Model model, @PathVariable int eno){
        Member member = memberService.findById(eno);
        model.addAttribute("member", member);
        return "exam01/member/member_by_eno.jsp";
    }

    @GetMapping("/member/addition")
    public String getMemberAdd(Model model){;
        return "exam01/member/add_member.jsp";
    }

    @PostMapping("/member/add")
    public RedirectView createMember(@ModelAttribute Member member){
        memberService.save(member);
        return new RedirectView("/exam01/member");
    }

    @GetMapping("/member/edition/{eno}")
    public String editMember(Model model, @PathVariable int eno){
        Member member = memberService.findById(eno);
        model.addAttribute("member", member);
        return "/exam01/member/update_member.jsp";
    }

    @PutMapping("/member/edit/{eno}")
    public RedirectView updateMember(@ModelAttribute Member member, @PathVariable int eno){
        memberService.save(member);
        return new RedirectView("/exam01/member");
    }

    @DeleteMapping("/member/delete/{eno}")
    public RedirectView deleteMember(@PathVariable int eno){
        memberService.removeByEno(eno);
        return new RedirectView("/exam01/member");
    }
}
