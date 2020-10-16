CREATE TABLE USERS(
 USERNAME VARCHAR2(50) NOT NULL PRIMARY KEY,
 PASSWORD VARCHAR2(50) NOT NULL,
 ENABLED CHAR(1) DEFAULT '1' 
);

CREATE TABLE AUTHORITIES(
  USERNAME VARCHAR2(50) NOT NULL,
  AUTHORITY VARCHAR2(50) NOT NULL,
  CONSTRAINT FK_AUTHORITIES_USERS FOREIGN KEY(USERNAME)REFERENCES USERS(USERNAME)
);

CREATE UNIQUE INDEX IX_AUTH_USERNAME ON AUTHORITIES (USERNAME,AUTHORITY);

INSERT INTO USERS(USERNAME,PASSWORD)VALUES('user00','pw00');
INSERT INTO USERS(USERNAME,PASSWORD)VALUES('member00','pw00');
INSERT INTO USERS(USERNAME,PASSWORD)VALUES('admin00','pw00');

INSERT INTO AUTHORITIES(USERNAME,AUTHORITY)VALUES('user00','ROLE_USER');
INSERT INTO AUTHORITIES(USERNAME,AUTHORITY)VALUES('member00','ROLE_MANAGER');
INSERT INTO AUTHORITIES(USERNAME,AUTHORITY)VALUES('admin00','ROLE_ADMIN');
INSERT INTO AUTHORITIES(USERNAME,AUTHORITY)VALUES('admin00','ROLE_MANAGER');

COMMIT;
