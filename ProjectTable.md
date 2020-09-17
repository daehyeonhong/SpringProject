# Project Table Set

|    규칙     |                        예시                        |
| :---------: | :------------------------------------------------: |
| 테이블 작명 |   ~~~\_user, ~~~\_short_cars, ~~~\_short_reserv    |
|  칼럼 작명  | user_id, short_cars_model, short_reserv_start_date |
|             |                                                    |

## ~~~\_user

|  논리 명   |      물리 명       | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트                        | 속성   |
| :--------: | :----------------: | :----: | :----: | :------------: | ----------- | ----------------------------- | ------ |
| 회원 번호  |      user_seq      |   PK   |        |    NOT ULL     | NUMBER      | SEQUENCE ==> user_seq.NEXTVAL | UNIQUE |
|   아이디   |      user_id       |        |   FK   |    NOT NULL    | VARCHAR2    |                               | UNIQUE |
|  비밀번호  |   user_password    |        |        |    NOT NULL    | VARCHAR2    |                               |        |
|    이름    |     user_name      |        |        |    NOT NULL    | VARCHAR2    |                               |        |
|    별명    |   user_nickname    |        |        |    NOT NULL    | VARCHAR2    |                               | UNIQUE |
|    생일    |  user_birth_date   |        |        |      NULL      | DATE        |                               |        |
|   이메일   |     user_email     |        |        |    NOT NULL    | VARCHAR2    |                               | UNIQUE |
|  전화번호  |     user_phone     |        |        |    NOT NULL    | VARCHAR2    |                               | UNIQUE |
|    면허    |    user_license    |        |        |    NOT NULL    | VARCHAR2    |                               | UNIQUE |
|   가입일   | user_register_date |        |        |    NOT NULL    | DATE        | SYSDATE                       |        |
| 정보변경일 |  user_update_date  |        |        |    NOT NULL    | DATE        | SYSDATE                       |        |

## ~~~\_notice

| 논리이름 |        칼럼명        |   타입   |       속성       |             기본값              |
| :------: | :------------------: | :------: | :--------------: | :-----------------------------: |
| 글 번호  |      notiec_seq      |  NUMBER  |   PRIMARY KEY    | SEQUENCE ==> notice_seq.NEXTVAL |
|   분류   |   notice_category    | VARCHAR2 | UNIQUE, NOT NULL |
|   제목   |     notice_title     | VARCHAR2 | UNIQUE, NOT NULL |
|  작성자  |      admin_seq       | VARCHAR2 |     NOT NULL     |    FOREIGNKEY ==> admin_seq     |
|   내용   |    notice_content    | VARCHAR2 |     NOT NULL     |
|  조회수  |     notice_count     |  NUMBER  |                  |            DEFALUT 0            |
|  좋아요  |    notice_like_it    |  NUMBER  |                  |            DEFALUT 0            |
|  등록일  | notice_register_date |   DATE   |                  |         DEFAULT SYSDATE         |
|  수정일  |  notice_update_date  |   DATE   |                  |         DEFAULT SYSDATE         |

## ~~~\_short_car

|  논리이름   |        칼럼명        |   타입   |       속성       |             기본값              |
| :---------: | :------------------: | :------: | :--------------: | :-----------------------------: |
|  차량 코드  |      notiec_seq      |  NUMBER  |   PRIMARY KEY    | SEQUENCE ==> notice_seq.NEXTVAL |
|  차량 번호  |   notice_category    | VARCHAR2 | UNIQUE, NOT NULL |
|  차량 모델  |     notice_title     | VARCHAR2 | UNIQUE, NOT NULL |
|    연료     |      admin_seq       | VARCHAR2 |     NOT NULL     |    FOREIGNKEY ==> admin_seq     |
|  블랙박스   |    notice_content    | VARCHAR2 |     NOT NULL     |
| 후방 카메라 |     notice_count     |  NUMBER  |                  |            DEFALUT 0            |
|  후방 센서  |    notice_like_it    |  NUMBER  |                  |            DEFALUT 0            |
| 내비게이션  | notice_register_date |   DATE   |                  |         DEFAULT SYSDATE         |
|   선루프    |  notice_update_date  |   DATE   |                  |         DEFAULT SYSDATE         |
