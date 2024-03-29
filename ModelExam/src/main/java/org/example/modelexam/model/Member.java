package org.example.modelexam.model;

import lombok.*;

/**
 * packageName : com.example.modelexam.model
 * fileName : Member
 * author : kangtaegyung
 * date : 2022/10/14
 * description : 회원 정보 테이블
 * 요약 :
 * <p>
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022/10/14         kangtaegyung          최초 생성
 */
@Setter
@Getter
@ToString
@NoArgsConstructor // 기본생성자 만든느 어노테이션
public class Member extends BaseTimeEntity {
    private Integer eno;
    private String ename;
    private String job;
    private Integer manager;

    @Builder
    public Member(Integer eno, String ename, String job, Integer manager) {
        super();
        this.eno = eno;
        this.ename = ename;
        this.job = job;
        this.manager = manager;
    }
}
