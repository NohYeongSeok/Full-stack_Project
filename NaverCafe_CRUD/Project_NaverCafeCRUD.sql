---------------------------------����
-- ���̺� ����
DROP TABLE nc_user;
DROP TABLE nc_board;

---------------------------------����
-- ���� ���̺� ����
CREATE TABLE nc_user (
    id          VARCHAR2(20)    PRIMARY KEY,
    pw          VARCHAR2(20)    NOT NULL,
    name        VARCHAR2(20)    NOT NULL,
    birth       VARCHAR2(20)    NOT NULL,
    gender      VARCHAR2(20),
    email       VARCHAR2(20),
    tel         VARCHAR2(20)    NOT NULL
);

-- �Խ��� ���̺� ����
CREATE TABLE nc_board (
    seq         NUMBER(5)       PRIMARY KEY,
    tag         VARCHAR2(20)    NOT NULL,
    id          VARCHAR2(20)    NOT NULL,
    title       VARCHAR2(100)   NOT NULL,
    content     VARCHAR2(500)   NOT NULL,
    regdate     DATE            DEFAULT SYSDATE,
    cnt         NUMBER(5)       default 0
);


---------------------------------��ȸ
-- ���̺� ��ȸ
SELECT * FROM nc_user;

SELECT * FROM nc_board;


---------------------------------���̺� �÷� �Է�
-- ���� ���̺� �÷� �Է�
INSERT INTO nc_user VALUES ('ys', '1111', '�뿵��', '1994-02-19', '����', 'nyoungseok@naver.com', '010-3532-6754');

-- �Խ��� ���̺� �÷� �Է�
INSERT INTO nc_board(seq, tag, id, title, content)
VALUES (1, '�����Խ���', 'ys', '�׽�Ʈ����', '�׽�Ʈ����');


---------------------------------Ŀ��
COMMIT;


---------------------------------SQL��
-- ȸ������
INSERT INTO nc_user VALUES ('ys', '1111', '�뿵��', '1994-02-19', '����', 'nyoungseok@naver.com', '010-3532-6754');

-- ȸ������ �ҷ�����
SELECT * FROM nc_user WHERE id = 'ys' AND pw = '1111';

-- �Խ��� ���� �ҷ�����
SELECT * FROM nc_board ORDER BY seq DESC;

-- �� �Խ��� �� �ҷ�����
SELECT * FROM nc_board WHERE TAG = '��������' ORDER BY seq DESC;
SELECT * FROM nc_board WHERE TAG = '�����Խ���' ORDER BY seq DESC;
SELECT * FROM nc_board WHERE TAG = '�����Խ���' ORDER BY seq DESC;
SELECT * FROM nc_board WHERE TAG = '�Ű�Խ���' ORDER BY seq DESC;

-- �۾���
INSERT INTO nc_board(seq, tag, id, title, content) VALUES ((SELECT NVL(MAX(seq), 0)+1 FROM nc_board), '�����Խ���', 'ys', '�۾����׽�Ʈ', '�׽�Ʈ����');

-- �ۼ���
UPDATE nc_board SET tag = '�����Խ���', title = '��������', content = '��������' WHERE seq = 3;

-- �ۻ���
DELETE FROM nc_board WHERE seq = 6;