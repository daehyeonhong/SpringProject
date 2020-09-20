# Project Table Set

|    규칙     |                     예시                      |
| :---------: | :-------------------------------------------: |
| 테이블 작명 |        user, short_cars, short_reserv         |
|  칼럼 작명  | id, short_cars_model, short_reserv_start_date |
|             |                                               |

## users

|  논리 명   |    물리 명    | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트                   | 속성   |
| :--------: | :-----------: | :----: | :----: | :------------: | ----------- | ------------------------ | ------ |
| 회원 번호  |      seq      |   PK   |        |    NOT NULL    | NUMBER      | SEQUENCE ==> seq.NEXTVAL | UNIQUE |
|   아이디   |      id       |        |   FK   |    NOT NULL    | VARCHAR2    |                          | UNIQUE |
|  비밀번호  |   password    |        |        |    NOT NULL    | VARCHAR2    |                          |        |
|    이름    |     name      |        |        |    NOT NULL    | VARCHAR2    |                          |        |
|    별명    |   nickname    |        |        |    NOT NULL    | VARCHAR2    |                          | UNIQUE |
|    생일    |  birth_date   |        |        |      NULL      | DATE        |                          |        |
|   이메일   |     email     |        |        |    NOT NULL    | VARCHAR2    |                          | UNIQUE |
|  전화번호  |     phone     |        |        |    NOT NULL    | VARCHAR2    |                          | UNIQUE |
|    면허    |    license    |        |        |    NOT NULL    | VARCHAR2    |                          | UNIQUE |
|   가입일   | register_date |        |        |    NOT NULL    | DATE        | SYSDATE                  |        |
| 정보변경일 |  update_date  |        |        |    NOT NULL    | DATE        | SYSDATE                  |        |

## notice

| 논리 명 |    물리 명    | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트                   | 속성   |
| :-----: | :-----------: | :----: | :----: | :------------: | ----------- | ------------------------ | ------ |
| 글 번호 |      seq      |   PK   |        |    NOT NULL    | NUMBER      | SEQUENCE ==> seq.NEXTVAL | UNIQUE |
|  분류   |   category    |        |        |    NOT NULL    | VARCHAR2    |                          |        |
|  제목   |     title     |        |        |    NOT NULL    | VARCHAR2    |                          |        |
|  내용   |    content    |        |        |    NOT NULL    | VARCHAR2    |                          |        |
| 조회수  |     count     |        |        |    NOT NULL    | NUMBER      | 0                        |        |
| 좋아요  |     like      |        |        |    NOT NULL    | NUMBER      | 0                        |        |
| 싫어요  |    dislike    |        |        |    NOT NULL    | NUMBER      | 0                        |        |
| 등록일  | register_date |        |        |    NOT NULL    | DATE        | SYSDATE                  |        |
| 수정일  |  update_date  |        |        |    NOT NULL    | DATE        | SYSDATE                  |        |

## short_car

|    논리 명     |    물리 명     | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트  | 속성             |
| :------------: | :------------: | :----: | :----: | :------------: | ----------- | ------- | ---------------- |
|   차량 코드    |      code      |   PK   |        |    NOT NULL    | NUMBER      |         | UNIQUE           |
| 차량 등록 번호 |      seq       |        |   FK   |    NOT NULL    | NUMBER      |         |                  |
|   차량 번호    | license_plate  |        |        |    NOT NULL    | VARCHAR2    |         | UNIQUE           |
|    블랙박스    |    dash_cam    |        |        |    NOT NULL    | NUMBER      | 0       |                  |
|  후방 카메라   | backup_camera  |        |        |    NOT NULL    | NUMBER      | 0       |                  |
|   후방 센서    | parking_sensor |        |        |    NOT NULL    | NUMBER      | 0       |                  |
|   내비게이션   |   navigation   |        |        |    NOT NULL    | NUMBER      | 0       |                  |
|     선루프     |    sunroof     |        |        |    NOT NULL    | NUMBER      | 0       |                  |
|    블루투스    |   bluetooth    |        |        |    NOT NULL    | NUMBER      | 0       |                  |
|      AUX       |      aux       |        |        |    NOT NULL    | NUMBER      | 0       |                  |
|    스마트키    |   smart_key    |        |        |    NOT NULL    | NUMBER      | 0       |                  |
| 평일 예약 가격 |  nomal_price   |        |        |    NOT NULL    | NUMBER      | 0       |                  |
| 주말 예약 가격 | weekend_price  |        |        |    NOT NULL    | NUMBER      | 0       |                  |
|      지점      |     branch     |        |   FK   |    NOT NULL    | NUMBER      | 0       | table_branch.seq |
|  차량 등록일   | register_date  |        |        |    NOT NULL    | DATE        | SYSDATE |                  |
|  차량 삭제일   |  update_date   |        |        |    NOT NULL    | DATE        | SYSDATE |                  |

## long_car

|  논리 명  | 물리 명 | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트 | 속성   |
| :-------: | :-----: | :----: | :----: | :------------: | ----------- | ------ | ------ |
| 차량 코드 |  code   |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
| 차량 모델 |  model  |        |   FK   |    NOT NULL    | VARCHAR2    |        |        |
|   가격    |  price  |        |        |    NOT NULL    | NUMBER      |        |        |

## car

|    논리 명     |   물리 명    | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트 | 속성   |
| :------------: | :----------: | :----: | :----: | :------------: | ----------- | ------ | ------ |
| 차량 등록 번호 |     seq      |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|   차량 코드    |     code     |        |        |    NOT NULL    | NUMBER      |        |        |
|      모델      |    model     |        |        |    NOT NULL    | NUMBER      |        |        |
|      차급      |   segment    |        |        |    NOT NULL    | VARCHAR2    |        |        |
|      연료      |     fuel     |        |        |    NOT NULL    | VARCHAR2    |        |        |
|      트림      |     trim     |        |        |    NOT NULL    | VARCHAR2    |        |        |
|     제조사     | manufacturer |        |        |    NOT NULL    | VARCHAR2    |        |        |
|      연식      |     year     |        |        |    NOT NULL    | DATE        |        |        |
