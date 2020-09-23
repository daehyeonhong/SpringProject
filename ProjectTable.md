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
|   적립금   |               |        |        |      NULL      | NUMBER      | 0                        |        |

면허 종류

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

|    논리 명     |    물리 명     | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트  | 속성       |
| :------------: | :------------: | :----: | :----: | :------------: | ----------- | ------- | ---------- |
|   차량 코드    |      code      |   PK   |        |    NOT NULL    | NUMBER      |         | UNIQUE     |
|   차량 번호    | license_plate  |        |        |    NOT NULL    | VARCHAR2    |         | UNIQUE     |
|    블랙박스    |    dash_cam    |        |        |    NOT NULL    | NUMBER      | 0       |            |
|  후방 카메라   | backup_camera  |        |        |    NOT NULL    | NUMBER      | 0       |            |
|   후방 센서    | parking_sensor |        |        |    NOT NULL    | NUMBER      | 0       |            |
|   내비게이션   |   navigation   |        |        |    NOT NULL    | NUMBER      | 0       |            |
|     선루프     |    sunroof     |        |        |    NOT NULL    | NUMBER      | 0       |            |
|    블루투스    |   bluetooth    |        |        |    NOT NULL    | NUMBER      | 0       |            |
|      AUX       |      aux       |        |        |    NOT NULL    | NUMBER      | 0       |            |
|    스마트키    |   smart_key    |        |        |    NOT NULL    | NUMBER      | 0       |            |
| 평일 예약 가격 |  nomal_price   |        |        |    NOT NULL    | NUMBER      | 0       |            |
| 주말 예약 가격 | weekend_price  |        |        |    NOT NULL    | NUMBER      | 0       |            |
|      지점      |     branch     |        |   FK   |    NOT NULL    | NUMBER      | 0       | branch.seq |
|  차량 등록일   | register_date  |        |        |    NOT NULL    | DATE        | SYSDATE |            |
|  차량 변경일   |  update_date   |        |        |    NOT NULL    | DATE        | SYSDATE |            |

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
|     이미지     |    image     |        |        |      NULL      | VARCHAR2    |        |        |
|      연식      |     year     |        |        |    NOT NULL    | VARCHAR2    |        |        |

## customer_inquiry

|   논리 명    |    물리 명    | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트  | 속성     |
| :----------: | :-----------: | :----: | :----: | :------------: | ----------- | ------- | -------- |
| 글 등록 번호 |      seq      |   PK   |        |    NOT NULL    | NUMBER      |         | UNIQUE   |
| 회원 아이디  |      id       |        |   FK   |    NOT NULL    | VARCHAR2    |         | users.id |
|    이메일    |     email     |        |        |    NOT NULL    | VARCHAR2    |         |          |
|     제목     |     title     |        |        |    NOT NULL    | VARCHAR2    |         |          |
|     내용     |    content    |        |        |    NOT NULL    | VARCHAR2    |         |          |
|  공개 여부   |    private    |        |        |    NOT NULL    | NUMBER      | 0       |          |
|  답변 번호   |    answer     |        |   FK   |    NOT NULL    | NUMBER      |         |          |
|    등록일    | register_date |        |        |    NOT NULL    | DATE        | SYSDATE |          |
|    수정일    |  update_date  |        |        |    NOT NULL    | DATE        | SYSDATE |          |

## customer_answer

|     논리 명      |    물리 명    | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트  | 속성                 |
| :--------------: | :-----------: | :----: | :----: | :------------: | ----------- | ------- | -------------------- |
|  답글 등록 번호  |      seq      |   PK   |        |    NOT NULL    | NUMBER      |         | UNIQUE               |
| 문의글 등록 번호 |      seq      |        |   FK   |    NOT NULL    | NUMBER      |         | customer_inquery.seq |
|       제목       |     title     |        |        |    NOT NULL    | VARCHAR2    |         |                      |
|      작성자      |    writer     |        |   FK   |    NOT NULL    | VARCHAR2    |         | admin.id             |
|       내용       |    content    |        |        |    NOT NULL    | VARCHAR2    |         |                      |
|      등록일      | register_date |        |        |    NOT NULL    | DATE        | SYSDATE |                      |
|      수정일      |  update_date  |        |        |    NOT NULL    | DATE        | SYSDATE |                      |

## short_term

|  논리 명  |    물리 명     | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트 | 속성   |
| :-------: | :------------: | :----: | :----: | :------------: | ----------- | ------ | ------ |
| 예약 번호 |      seq       |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|  사용자   |       id       |        |        |    NOT NULL    | VARCHAR2    |        |        |
|  대여일   |   start_date   |        |        |    NOT NULL    | DATE        |        |        |
|  반납일   |    end_date    |        |        |    NOT NULL    | DATE        |        |        |
|   지점    |     branch     |        |        |    NOT NULL    | NUMBER      |        |        |
| 차량 코드 |      code      |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|  총 금액  |  total_amount  |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|  적립금   |    reserve     |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|   쿠폰    |     coupon     |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
| 결제 금액 | payment_amount |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|   보험    |   insurance    |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |

## 보험 ==> insurance

|   논리 명   |  물리 명   | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트 | 속성   |
| :---------: | :--------: | :----: | :----: | :------------: | ----------- | ------ | ------ |
|  보험 번호  |    seq     |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|   보험명    |    name    |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|  보험비용   |    fare    |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
| 보험 부담금 | deductible |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |

## 지점

|     논리 명      |   물리 명   | 기본키 | 외래키 | NULL 허용 여부 | 데이터 타입 | 디폴트 | 속성   |
| :--------------: | :---------: | :----: | :----: | :------------: | ----------- | ------ | ------ |
|    지점 번호     |     seq     |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|     지점 명      |    name     |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|      연락처      |    phone    |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|    지점 위치     |   address   |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|    수리 여부     | maintenance |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
| 전기차 보유 여부 |  electric   |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |
|    내륙 제주     |    type     |   PK   |        |    NOT NULL    | NUMBER      |        | UNIQUE |

지점 지도 링크 추가
지점
