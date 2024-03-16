package org.example.modelexam.service.exam01;

import org.example.modelexam.dao.DeptDao;
import org.example.modelexam.model.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * packageName : org.example.modelexam.service.exam01
 * fileName : DeptService
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
@Service // 얘를 붙여주어야지 bean으로 등록이 되어 스프링이 인식이 가능하다.
public class DeptService {

    @Autowired // 얘도 스프링에 bean으로 올려준다. DI에 사용을 해야하는데 spring이 인식을 못 하면 안되니까..
    DeptDao deptDao;

    /**
     * 전체조회 함수
     * @return : 부서 객체 배열
     */
    public List<Dept> findAll() {
        List<Dept> list = deptDao.selectAll();
        return list;
    }

    /**
     * DB상세조회 dno로 부서 찾기
     * @param dno
     * @return 부서 객체
     */
    public Dept findByDno(Long dno){
        Dept dept = deptDao.selectById(dno);
        return dept;
    }

    public List<Dept> save(Dept dept){
        List<Dept> list = null;
        if (dept.getDno() == null) {
            int count = deptDao.selectAll().size();
            dept.setDno((count+1)*10);
            list = deptDao.insert(dept);
        }else {
            list = deptDao.update(dept);
        }
        return list;
    }

    /**
     * 부서번호(dno) 로 삭제하는 함수
     * @param dno
     * @return 참/거짓
     */
    public boolean removeByDno(long dno){
        int count = deptDao.deleteById(dno); // 이 함수느 list에서 회원 정보를 삭제하고 삭제를 하면 1을 안하면 0을 return 한다.
        return (count>0)? true : false; // count가 0보다 크면 true 0이면 false를 리턴하게 한다.
    }
}
