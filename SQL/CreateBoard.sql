drop table board1;

create table board1 (
    BOARD_NUM NUMBER,         
    BOARD_NAME VARCHAR2(20),   
    BOARD_PASS VARCHAR2(15),   
    BOARD_SUBJECT VARCHAR2(50),   
    BOARD_CONTENT VARCHAR2(2000), 
    BOARD_FILE VARCHAR2(50),   
    BOARD_RE_REF NUMBER,         
    BOARD_RE_LEV NUMBER,         
    BOARD_RE_SEQ NUMBER,         
    BOARD_READCOUNT NUMBER,         
    BOARD_DATE DATE,
    PRIMARY KEY(BOARD_NUM)
);

drop table board2;

create table board2 (
    BOARD_NUM NUMBER,         
    BOARD_NAME VARCHAR2(20),   
    BOARD_PASS VARCHAR2(15),   
    BOARD_SUBJECT VARCHAR2(50),   
    BOARD_CONTENT VARCHAR2(2000), 
    BOARD_FILE VARCHAR2(50),   
    BOARD_RE_REF NUMBER,         
    BOARD_RE_LEV NUMBER,         
    BOARD_RE_SEQ NUMBER,         
    BOARD_READCOUNT NUMBER,         
    BOARD_DATE DATE,
    PRIMARY KEY(BOARD_NUM)
);

drop table board3;

create table board3 (
    BOARD_NUM NUMBER,         
    BOARD_NAME VARCHAR2(20),   
    BOARD_PASS VARCHAR2(15),   
    BOARD_SUBJECT VARCHAR2(50),   
    BOARD_CONTENT VARCHAR2(2000), 
    BOARD_FILE VARCHAR2(50),   
    BOARD_RE_REF NUMBER,         
    BOARD_RE_LEV NUMBER,         
    BOARD_RE_SEQ NUMBER,         
    BOARD_READCOUNT NUMBER,         
    BOARD_DATE DATE,
    PRIMARY KEY(BOARD_NUM)
);

drop table board4;

create table board4 (
    BOARD_NUM NUMBER,         
    BOARD_NAME VARCHAR2(20),   
    BOARD_PASS VARCHAR2(15),   
    BOARD_SUBJECT VARCHAR2(50),   
    BOARD_CONTENT VARCHAR2(2000), 
    BOARD_FILE VARCHAR2(50),   
    BOARD_RE_REF NUMBER,         
    BOARD_RE_LEV NUMBER,         
    BOARD_RE_SEQ NUMBER,         
    BOARD_READCOUNT NUMBER,         
    BOARD_DATE DATE,
    PRIMARY KEY(BOARD_NUM)
);

insert into board1 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(1,'관리자','1234','Wecome to gorgeous! 3월 20일 오픈!','내용무',0,0,0,sysdate);

insert into board1 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(2,'관리자','1234','코로나 19 사태 관련 배송 지연 안내','내용무',0,0,0,sysdate);

insert into board1 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(3,'관리자','1234','4월 12일부터 배송 재개 및 순차 발송','내용무',0,0,0,sysdate);




insert into board2 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(1,'이승종','1234', '리뷰 1','내용무',0,0,0,sysdate);

insert into board2 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(2,'정주화','1234', '리뷰 2','내용무',0,0,0,sysdate);

insert into board2 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(3,'김두민','1234', '리뷰 3','내용무',0,0,0,sysdate);

insert into board2 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(4,'김은영','1234', '리뷰 4','내용무',0,0,0,sysdate);




insert into board3 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(1,'이승종','1234','배송 언제 되나요?','내용무',0,0,0,sysdate);

insert into board3 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(2,'정주화','1234','제품 너무 맘에 들어요!','내용무',0,0,0,sysdate);

insert into board3 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(3,'김두민','1234','이쁜 옷입니다','내용무',0,0,0,sysdate);

insert into board3 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(4,'김은영','1234','제품 발송 관련 문의드립니다.','내용무',0,0,0,sysdate);

insert into board3 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(5,'김두민','1234','환불은 어떻게 하나요?','내용무',0,0,0,sysdate);




insert into board4 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(1,'관리자','1234','자주 묻는 질문 1','내용무',0,0,0,sysdate);

insert into board4 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(2,'관리자','1234','자주 묻는 질문 2','내용무',0,0,0,sysdate);

insert into board4 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(3,'관리자','1234','자주 묻는 질문 3','내용무',0,0,0,sysdate);

insert into board4 (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT, BOARD_CONTENT, BOARD_RE_LEV, BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DATE) values(4,'관리자','1234','자주 묻는 질문 4','내용무',0,0,0,sysdate);


commit;

select * from board1;
select * from board2;
select * from board3;
select * from board4;