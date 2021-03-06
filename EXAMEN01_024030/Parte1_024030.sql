ALTER TABLE EX1_024030.CATEGORIES
 DROP PRIMARY KEY CASCADE;

DROP TABLE EX1_024030.CATEGORIES CASCADE CONSTRAINTS;

CREATE TABLE EX1_024030.CATEGORIES
(
  CATEGORY_ID       NUMBER                      NOT NULL,
  PRODUCT_CATEGORY  VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE EX1_024030.CITIES
 DROP PRIMARY KEY CASCADE;

DROP TABLE EX1_024030.CITIES CASCADE CONSTRAINTS;

CREATE TABLE EX1_024030.CITIES
(
  CITY_ID    NUMBER                             NOT NULL,
  CITY_NAME  VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE EX1_024030.CULTURES
 DROP PRIMARY KEY CASCADE;

DROP TABLE EX1_024030.CULTURES CASCADE CONSTRAINTS;

CREATE TABLE EX1_024030.CULTURES
(
  CULTURE_ID          NUMBER                    NOT NULL,
  CULTURE_NAME        VARCHAR2(100 BYTE),
  CULTURE_DESCRPTION  VARCHAR2(255 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE EX1_024030.CUSTOMERS
 DROP PRIMARY KEY CASCADE;

DROP TABLE EX1_024030.CUSTOMERS CASCADE CONSTRAINTS;

CREATE TABLE EX1_024030.CUSTOMERS
(
  CUSTOMER_ID  NUMBER                           NOT NULL,
  FIRST_NAME   VARCHAR2(100 BYTE),
  LAST_NAME    VARCHAR2(100 BYTE),
  COMPANY      VARCHAR2(100 BYTE),
  EMAIL        VARCHAR2(100 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE EX1_024030.PRODUCTS
 DROP PRIMARY KEY CASCADE;

DROP TABLE EX1_024030.PRODUCTS CASCADE CONSTRAINTS;

CREATE TABLE EX1_024030.PRODUCTS
(
  PRODUCT_ID      NUMBER                        NOT NULL,
  PRODUCT_NAME    VARCHAR2(100 BYTE),
  PRODUCT_WEIGHT  NUMBER,
  LIST_PRICE      NUMBER(23,2),
  CATEGORY_ID     NUMBER,
  CULTURE_ID      NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


CREATE UNIQUE INDEX EX1_024030.CATEGORIES_PK ON EX1_024030.CATEGORIES
(CATEGORY_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX EX1_024030.CITIES_PK ON EX1_024030.CITIES
(CITY_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX EX1_024030.CULTURES_PK ON EX1_024030.CULTURES
(CULTURE_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX EX1_024030.CUSTOMERS_PK ON EX1_024030.CUSTOMERS
(CUSTOMER_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX EX1_024030.PRODUCTS_PK ON EX1_024030.PRODUCTS
(PRODUCT_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE EX1_024030.ADDRESSES
 DROP PRIMARY KEY CASCADE;

DROP TABLE EX1_024030.ADDRESSES CASCADE CONSTRAINTS;

CREATE TABLE EX1_024030.ADDRESSES
(
  ADDRESS_ID            NUMBER                  NOT NULL,
  ZIPCODE               VARCHAR2(100 BYTE),
  ADDRESS_NAME          VARCHAR2(255 BYTE),
  BILLING_ZIPCODE       VARCHAR2(100 BYTE),
  BILLING_ADDRESS_NAME  VARCHAR2(255 BYTE),
  CITY_ID               NUMBER,
  CUSTOMER_ID           NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE EX1_024030.ORDERS
 DROP PRIMARY KEY CASCADE;

DROP TABLE EX1_024030.ORDERS CASCADE CONSTRAINTS;

CREATE TABLE EX1_024030.ORDERS
(
  ORDER_ID     NUMBER                           NOT NULL,
  ORDER_DATE   DATE,
  CUSTOMER_ID  NUMBER,
  ADDRESS_ID   NUMBER,
  SHIPPING     NUMBER(23,2),
  UNIT_PRICE   NUMBER(23,2),
  SUBTOTAL     NUMBER(23,2)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


ALTER TABLE EX1_024030.ORDERS_PRODUCTS
 DROP PRIMARY KEY CASCADE;

DROP TABLE EX1_024030.ORDERS_PRODUCTS CASCADE CONSTRAINTS;

CREATE TABLE EX1_024030.ORDERS_PRODUCTS
(
  ORDER_PRODUCT_ID  NUMBER                      NOT NULL,
  ORDER_ID          NUMBER,
  PRODUCT_ID        NUMBER,
  QUANTITY          NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;


CREATE UNIQUE INDEX EX1_024030.ADDRESSES_PK ON EX1_024030.ADDRESSES
(ADDRESS_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX EX1_024030.ORDERS_PK ON EX1_024030.ORDERS
(ORDER_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE UNIQUE INDEX EX1_024030.ORDERS_PRODUCTS_PK ON EX1_024030.ORDERS_PRODUCTS
(ORDER_PRODUCT_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE EX1_024030.CATEGORIES ADD (
  CONSTRAINT CATEGORIES_PK
  PRIMARY KEY
  (CATEGORY_ID)
  USING INDEX EX1_024030.CATEGORIES_PK
  ENABLE VALIDATE);

ALTER TABLE EX1_024030.CITIES ADD (
  CONSTRAINT CITIES_PK
  PRIMARY KEY
  (CITY_ID)
  USING INDEX EX1_024030.CITIES_PK
  ENABLE VALIDATE);

ALTER TABLE EX1_024030.CULTURES ADD (
  CONSTRAINT CULTURES_PK
  PRIMARY KEY
  (CULTURE_ID)
  USING INDEX EX1_024030.CULTURES_PK
  ENABLE VALIDATE);

ALTER TABLE EX1_024030.CUSTOMERS ADD (
  CONSTRAINT CUSTOMERS_PK
  PRIMARY KEY
  (CUSTOMER_ID)
  USING INDEX EX1_024030.CUSTOMERS_PK
  ENABLE VALIDATE);

ALTER TABLE EX1_024030.PRODUCTS ADD (
  CONSTRAINT PRODUCTS_PK
  PRIMARY KEY
  (PRODUCT_ID)
  USING INDEX EX1_024030.PRODUCTS_PK
  ENABLE VALIDATE);

ALTER TABLE EX1_024030.ADDRESSES ADD (
  CONSTRAINT ADDRESSES_PK
  PRIMARY KEY
  (ADDRESS_ID)
  USING INDEX EX1_024030.ADDRESSES_PK
  ENABLE VALIDATE);

ALTER TABLE EX1_024030.ORDERS ADD (
  CONSTRAINT ORDERS_PK
  PRIMARY KEY
  (ORDER_ID)
  USING INDEX EX1_024030.ORDERS_PK
  ENABLE VALIDATE);

ALTER TABLE EX1_024030.ORDERS_PRODUCTS ADD (
  CONSTRAINT ORDERS_PRODUCTS_PK
  PRIMARY KEY
  (ORDER_PRODUCT_ID)
  USING INDEX EX1_024030.ORDERS_PRODUCTS_PK
  ENABLE VALIDATE);

ALTER TABLE EX1_024030.PRODUCTS ADD 
CONSTRAINT PRODUCTS_R01
 FOREIGN KEY (CATEGORY_ID)
 REFERENCES EX1_024030.CATEGORIES (CATEGORY_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EX1_024030.PRODUCTS ADD 
CONSTRAINT PRODUCTS_R02
 FOREIGN KEY (CULTURE_ID)
 REFERENCES EX1_024030.CULTURES (CULTURE_ID)
 ENABLE
 VALIDATE;

ALTER TABLE EX1_024030.ADDRESSES ADD 
CONSTRAINT ADDRESSES_R01
 FOREIGN KEY (CITY_ID)
 REFERENCES EX1_024030.CITIES (CITY_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EX1_024030.ADDRESSES ADD 
CONSTRAINT ADDRESSES_R02
 FOREIGN KEY (CUSTOMER_ID)
 REFERENCES EX1_024030.CUSTOMERS (CUSTOMER_ID)
 ENABLE
 VALIDATE;

ALTER TABLE EX1_024030.ORDERS ADD 
CONSTRAINT ORDERS_R01
 FOREIGN KEY (CUSTOMER_ID)
 REFERENCES EX1_024030.CUSTOMERS (CUSTOMER_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EX1_024030.ORDERS ADD 
CONSTRAINT ORDERS_R02
 FOREIGN KEY (ADDRESS_ID)
 REFERENCES EX1_024030.ADDRESSES (ADDRESS_ID)
 ENABLE
 VALIDATE;

ALTER TABLE EX1_024030.ORDERS_PRODUCTS ADD 
CONSTRAINT ORDERS_PRODUCTS_R01
 FOREIGN KEY (ORDER_ID)
 REFERENCES EX1_024030.ORDERS (ORDER_ID)
 ENABLE
 VALIDATE;
 
ALTER TABLE EX1_024030.ORDERS_PRODUCTS ADD 
CONSTRAINT ORDERS_PRODUCTS_R02
 FOREIGN KEY (PRODUCT_ID)
 REFERENCES EX1_024030.PRODUCTS (PRODUCT_ID)
 ENABLE
 VALIDATE;
