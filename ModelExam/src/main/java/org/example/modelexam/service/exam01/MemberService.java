package org.example.modelexam.service.exam01;

import org.example.modelexam.dao.MemberDao;
import org.example.modelexam.model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * packageName : org.example.modelexam.service.exam01
 * fileName : MemberService
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
@Service
public class MemberService {

    @Autowired
    MemberDao memberDao;

    public List<Member> findAll(){
       List<Member> list = memberDao.selectAll();
       return list;
    }
    public Member findById(int eno){
        Member member = memberDao.selectById(eno);
        return member;
    }
    public List<Member> save(Member member) {

        List<Member> list = null;

//      todo: ui(frontend) -> insert (사원번호가 없으면)
        if(member.getEno() == null) {
//          todo: 새로운 사원번호 생성
            int count = memberDao.selectAll().size(); // 전체 건수
            int newEno = count + 8000;
            member.setEno(newEno); // 새로운 사원번호 저장

            //      todo: db 저장
            list = memberDao.insert(member);
        }else {
            list = memberDao.update(member);
        }

        return list;
    }

    public boolean removeByEno(int eno){
        int count = memberDao.deleteById(eno);
        return (count>0)? true : false;
    }
}
