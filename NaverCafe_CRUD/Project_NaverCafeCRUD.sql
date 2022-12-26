---------------------------------삭제
-- 테이블 삭제
DROP TABLE nc_user;
DROP TABLE nc_board;

---------------------------------생성
-- 유저 테이블 생성
CREATE TABLE nc_user (
    id          VARCHAR2(20)    PRIMARY KEY,
    pw          VARCHAR2(20)    NOT NULL,
    name        VARCHAR2(20)    NOT NULL,
    birth       VARCHAR2(20)    NOT NULL,
    gender      VARCHAR2(20),
    email       VARCHAR2(20),
    tel         VARCHAR2(20)    NOT NULL
);

-- 게시판 테이블 생성
CREATE TABLE nc_board (
    seq         NUMBER(5)       PRIMARY KEY,
    tag         VARCHAR2(20)    NOT NULL,
    id          VARCHAR2(20)    NOT NULL,
    title       VARCHAR2(100)   NOT NULL,
    content     VARCHAR2(500)   NOT NULL,
    regdate     DATE            DEFAULT SYSDATE,
    cnt         NUMBER(5)       default 0
);


---------------------------------조회
-- 테이블 조회
SELECT * FROM nc_user;

SELECT * FROM nc_board;


---------------------------------테이블 컬럼 입력
-- 유저 테이블 컬럼 입력
INSERT INTO nc_user VALUES ('ys', '1111', '노영석', '1994-02-19', '남자', 'nyoungseok@naver.com', '010-3532-6754');

-- 게시판 테이블 컬럼 입력
INSERT INTO nc_board(seq, tag, id, title, content)
VALUES (1, '자유게시판', 'ys', '테스트제목', '테스트내용');


---------------------------------커밋
COMMIT;


---------------------------------SQL문
-- 회원가입
INSERT INTO nc_user VALUES ('ys', '1111', '노영석', '1994-02-19', '남자', 'nyoungseok@naver.com', '010-3532-6754');

-- 회원정보 불러오기
SELECT * FROM nc_user WHERE id = 'ys' AND pw = '1111';

-- 게시판 전부 불러오기
SELECT * FROM nc_board ORDER BY seq DESC;

-- 각 게시판 별 불러오기
SELECT * FROM nc_board WHERE TAG = '공지사항' ORDER BY seq DESC;
SELECT * FROM nc_board WHERE TAG = '자유게시판' ORDER BY seq DESC;
SELECT * FROM nc_board WHERE TAG = '질문게시판' ORDER BY seq DESC;
SELECT * FROM nc_board WHERE TAG = '신고게시판' ORDER BY seq DESC;

-- 글쓰기
INSERT INTO nc_board(seq, tag, id, title, content) VALUES ((SELECT NVL(MAX(seq), 0)+1 FROM nc_board), '자유게시판', 'ys', '글쓰기테스트', '테스트내용');

-- 글수정
UPDATE nc_board SET tag = '질문게시판', title = '수정제목', content = '수정내용' WHERE seq = 3;

-- 글삭제
DELETE FROM nc_board WHERE seq = 6;