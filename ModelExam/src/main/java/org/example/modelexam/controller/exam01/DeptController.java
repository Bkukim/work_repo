package org.example.modelexam.controller.exam01;

import lombok.extern.slf4j.Slf4j;
import org.example.modelexam.model.Dept;
import org.example.modelexam.service.exam01.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

/**
 * packageName : org.example.modelexam.controller.exam01
 * fileName : DeptController
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
@Slf4j
@Controller
@RequestMapping("/exam01")
public class DeptController {

    @Autowired
    DeptService deptService;

    @GetMapping("/dept")
    public String getDeptAll(Model model){
        List<Dept> list = deptService.findAll();
        model.addAttribute("list", list);
        return "exam01/dept/dept_all.jsp";
    }

//    @GetMapping("/dept/{dno}")
//    public String getDeptByDno(Model model, @PathVariable long dno){
//        Dept dept = deptService.findByDno(dno);
//        model.addAttribute("dept", dept);
//        return "/exam01/dept_by_dno.jsp";
//    }
    @GetMapping("/dept/{dno}")
    public String getDeptId(@PathVariable long dno,
                            Model model){
    //      TODO: service 의 상세조회 함수(findById) 호출
        Dept dept = deptService.findByDno(dno);
    //      TODO: jsp 로 dept(부서) 객체 전송
        model.addAttribute("dept", dept);
        return "exam01/dept/dept_by_dno.jsp";
    }

    @GetMapping("/dept/addition")
    public String addDept(Model model){
        return "/exam01/dept/add_dept2.jsp";
    }

    @PostMapping("/dept/add")
    public RedirectView createDept(@ModelAttribute Dept dept){ // 변수자리인데 왜 특정 클래스가 인식이 되나.. => 이 어노테이션이 변수 자리에 있는 것과 같은 이름의 애를 우리의 클래스 중에 이름이 같은 것과 연결해준다.
        // 인식이 된다면 검색 범위가 궁금? 만약 다른 패키지에 같은 이름이 있다면? => 그래서 우리는 임포트로 인식을 시켜준다.import org.example.modelexam.model.Dept;을 해줌으로 패키지가 어디인지를 인식시켜준다.
        deptService.save(dept);
        return new RedirectView("/exam01/dept"); // 저장이 되면 이동할 페이지 주소 적어준다. 여기선 jsp나 html이 아닌 getMapping의, 즉 url을 적어주는 곳이다.
    }

    @GetMapping("/dept/edition/{dno}") // 수정할 페이지를 만들어줄 것이다.
    public String editDept(Model model, @PathVariable long dno){
        Dept dept = deptService.findByDno(dno);
        model.addAttribute("dept", dept);
        return "exam01/dept/update_dept.jsp";
    }

    @PutMapping("/dept/edit/{dno}") // 특정dno 인 정보를 수정해야하므로 dno를 적어줘야함
    public RedirectView updateDept(@PathVariable long dno, @ModelAttribute Dept dept){
        deptService.save(dept);
        return new RedirectView("/exam01/dept");
    }

    @DeleteMapping("/dept/delete/{dno}")
    public RedirectView deleteDept(@PathVariable long dno){
        deptService.removeByDno(dno);
        return new RedirectView("/exam01/dept");
    }
}
