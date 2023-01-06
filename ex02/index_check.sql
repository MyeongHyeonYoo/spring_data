DROP table tbl_board;

create table tbl_board (
    bno number(10, 0),
    title varchar2(200) not null,
    content varchar2(2000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    updatedate date default sysdate
);
SELECT LAST_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'TB_ZZTRACE_SQ01';
ALTER SEQUENCE SEQ_BOARD INCREMENT BY -376273;
SELECT SEQ_BOARD.NEXTVAL FROM DUAL;
SELECT SEQ_BOARD.CURRVAL FROM DUAL;
ALTER SEQUENCE SEQ_BOARD INCREMENT BY 1;


alter table tbl_board add constraint pk_board primary key(bno);

INSERT INTO tbl_board(bno, title, content, writer) values(SEQ_BOARD.nextval, '테스트제목', '테스트내용', 'Yoo.MH');

INSERT INTO tbl_board(bno, title, content, writer)
(select seq_board.nextval, title, content, writer from tbl_board);

SELECT * FROM tbl_board;

SELECT * FROM tbl_board ORDER BY bno+1 desc;

select * from tbl_board where bno=100;

select * from tbl_board order by bno desc;

select * from tbl_board order by writer desc;

SELECT /*+INDEX_DESC(tbl_board pk_board) */* FROM tbl_board;

SELECT /*+ FULL(tbl_board) */* FROM tbl_board order by bno desc;

SELECT /*+ Index_ASC(tbl_board) */* FROM tbl_board;

SELECT /*+ Index_ASC(tbl_board pk_board) */
rownum rn, bno, title, content
FROM tbl_board;

SELECT /*+ Index_ASC(tbl_board pk_board) */
rownum rn, bno, title, content
FROM tbl_board
WHERE rownum <= 10;

SELECT /*+ Index_ASC(tbl_board pk_board) */
    rownum rn, bno, title, content
FROM tbl_board
WHERE rownum > 10 and rownum <= 20;

SELECT /*+ Index_ASC(tbl_board pk_board) */
rownum rn, bno, title, content
FROM tbl_board
WHERE rownum <= 20;

SELECT bno, title, content
from(
SELECT /*+ Index_ASC(tbl_board pk_board) */
rownum rn, bno, title, content
FROM tbl_board
where rownum <= 20
)
where rn > 10;
