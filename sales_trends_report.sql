
CREATE TABLE consumer (
  c_id NUMBER(11) NOT NULL,
  v_id NUMBER(11) NOT NULL,
  cf_name VARCHAR2(100) NOT NULL,
  cl_name VARCHAR2(100) NOT NULL,
  c_email VARCHAR2(100) NOT NULL,
  c_mobile VARCHAR2(100) NOT NULL,
  nid VARCHAR2(100) DEFAULT NULL,
  w_start DATE NOT NULL,
  w_end DATE NOT NULL,
  payment_type VARCHAR2(100) NOT NULL,
  invoice_id VARCHAR2(100) DEFAULT NULL,
  c_address VARCHAR2(400) DEFAULT NULL,
  c_pass VARCHAR2(30) NOT NULL,
  extra VARCHAR2(300) DEFAULT NULL
);

INSERT INTO consumer (c_id, v_id, cf_name, cl_name, c_email, c_mobile, nid, w_start, w_end, payment_type, invoice_id, c_address, c_pass, extra) 
VALUES (3, 115, 'Liam', 'Johnson', 'liamjh@gmail.com', '7526666660', '125896547854123658', TO_DATE('2021-04-20', 'YYYY-MM-DD'), TO_DATE('2023-04-01', 'YYYY-MM-DD'), 'Cash', '#IE9S115S', '1487  Frosty Lane', 'password', 'This is a demo text for testing');

INSERT INTO consumer (c_id, v_id, cf_name, cl_name, c_email, c_mobile, nid, w_start, w_end, payment_type, invoice_id, c_address, c_pass, extra) 
VALUES (4, 118, 'Linda', 'Reeves', 'reeveslinda@gmail.com', '7532220002', '333896549873216660', TO_DATE('2021-04-18', 'YYYY-MM-DD'), TO_DATE('2022-04-01', 'YYYY-MM-DD'), 'Cash', '#IE9S118S', '2231 Fairview Street', 'password', 'This is a demo text');




CREATE TABLE manufacturer (
  manufacturer_id NUMBER(11) NOT NULL,
  manufacturer_name VARCHAR2(100) NOT NULL,
  manufacturer_logo VARCHAR2(300) DEFAULT NULL
);

INSERT INTO manufacturer (manufacturer_id, manufacturer_name, manufacturer_logo) VALUES (30, 'BMW', NULL);
INSERT INTO manufacturer (manufacturer_id, manufacturer_name, manufacturer_logo) VALUES (32, 'LambourGini', NULL);
INSERT INTO manufacturer (manufacturer_id, manufacturer_name, manufacturer_logo) VALUES (36, 'Audi', NULL);
INSERT INTO manufacturer (manufacturer_id, manufacturer_name, manufacturer_logo) VALUES (37, 'Hyundai', NULL);
INSERT INTO manufacturer (manufacturer_id, manufacturer_name, manufacturer_logo) VALUES (38, 'Mercedes-Benz', NULL);
INSERT INTO manufacturer (manufacturer_id, manufacturer_name, manufacturer_logo) VALUES (39, 'Nissan', NULL);
INSERT INTO manufacturer (manufacturer_id, manufacturer_name, manufacturer_logo) VALUES (40, 'Toyota', NULL);
INSERT INTO manufacturer (manufacturer_id, manufacturer_name, manufacturer_logo) VALUES (41, 'MG', NULL);


CREATE TABLE model (
  model_id NUMBER(11) NOT NULL,
  model_name VARCHAR2(100) NOT NULL,
  manufacturer_name VARCHAR2(100) NOT NULL
);

INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (27, 'GSXR1000', 'BMW');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (28, 'Urus', 'LambourGini');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (29, 'Z4 Roadster', 'BMW');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (30, 'A3', 'Audi');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (31, 'Creta', 'Hyundai');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (32, 'X1', 'BMW');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (33, 'A4', 'Audi');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (34, 'E-Class', 'Mercedes-Benz');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (35, 'Rogue', 'Nissan');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (36, 'Sienna', 'Toyota');
INSERT INTO model (model_id, model_name, manufacturer_name) VALUES (37, 'Hector', 'MG');


CREATE TABLE users (
  u_id NUMBER(11) NOT NULL,
  su NUMBER(11) DEFAULT '0',
  u_email VARCHAR2(100) NOT NULL,
  f_name VARCHAR2(100) NOT NULL,
  l_name VARCHAR2(100) NOT NULL,
  u_bday DATE NOT NULL,
  u_position VARCHAR2(100) NOT NULL,
  u_type VARCHAR2(100) NOT NULL,
  u_pass VARCHAR2(100) NOT NULL,
  u_mobile VARCHAR2(100) NOT NULL,
  u_gender VARCHAR2(30) NOT NULL,
  u_address VARCHAR2(100) NOT NULL,
  s_question VARCHAR2(100) DEFAULT NULL,
  s_ans VARCHAR2(100) DEFAULT NULL
);

INSERT INTO users (u_id, su, u_email, f_name, l_name, u_bday, u_position, u_type, u_pass, u_mobile, u_gender, u_address, s_question, s_ans) 
VALUES (1, 1, 'johnwalker@gmail.com', 'John', 'Walker', TO_DATE('2016-04-14', 'YYYY-MM-DD'), 'Super Admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '3133388055', 'Male', '129,North Road, BD', 'What is your name???', 'sssjjjj');

INSERT INTO users (u_id, su, u_email, f_name, l_name, u_bday, u_position, u_type, u_pass, u_mobile, u_gender, u_address, s_question, s_ans) 
VALUES (9, 1, 'employee@employee.com', 'Mr', 'Employee', TO_DATE('2015-11-30', 'YYYY-MM-DD'), 'General Employee', 'Employee', 'fa5473530e4d1a5a1e1eb53d2fedb10c', '00202', 'Male', 'kkasd', NULL, NULL);

INSERT INTO users (u_id, su, u_email, f_name, l_name, u_bday, u_position, u_type, u_pass, u_mobile, u_gender, u_address, s_question, s_ans) 
VALUES (10, 1, 'admin@admin.com', 'Admin', 'Liam', TO_DATE('2015-11-30', 'YYYY-MM-DD'), 'Demo Admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '3785554520', 'Male', '421 Ralph Street', 'Who do you love the most?', 'none');

INSERT INTO users (u_id, su, u_email, f_name, l_name, u_bday, u_position, u_type, u_pass, u_mobile, u_gender, u_address, s_question, s_ans) 
VALUES (11, 0, 'stephen@gmail.com', 'Stephen', 'Moore', TO_DATE('1990-02-02', 'YYYY-MM-DD'), 'Employee', 'Employee', '5f4dcc3b5aa765d61d8327deb882cf99', '7531258960', 'Male', '1212 Ralph Street', 'Who do you prise?', 'Myself');

INSERT INTO users (u_id, su, u_email, f_name, l_name, u_bday, u_position, u_type, u_pass, u_mobile, u_gender, u_address, s_question, s_ans) 
VALUES (12, 0, 'kevinrogers@gmail.com', 'Kevin', 'Rogers', TO_DATE('1989-04-01', 'YYYY-MM-DD'), 'Finance', 'Employee', '5f4dcc3b5aa765d61d8327deb882cf99', '2585214560', 'Male', '3891 Linda Street', 'What is your 1st Phone No?', '7536969696');

-- Show sales trends for various brands over the past 3 years, by year, month, week. 
-- Then break these data out by gender of the buyer and then by income range.

SELECT
  m.manufacturer_name AS Brand,
  EXTRACT(YEAR FROM c.w_start) AS SaleYear,
  EXTRACT(MONTH FROM c.w_start) AS SaleMonth,
  TO_CHAR(c.w_start, 'WW') AS SaleWeek,
  u.u_gender AS BuyerGender,
  c.extra AS BuyerIncomeRange,
  COUNT(*) AS TotalSales
FROM
  consumer c
JOIN
  model mo ON c.v_id = mo.model_id
JOIN
  manufacturer m ON mo.manufacturer_name = m.manufacturer_name
JOIN
  users u ON c.c_id = u.u_id
WHERE
  c.w_start >= SYSDATE - INTERVAL '3' YEAR
GROUP BY
  m.manufacturer_name,
  EXTRACT(YEAR FROM c.w_start),
  EXTRACT(MONTH FROM c.w_start),
  TO_CHAR(c.w_start, 'WW'),
  u.u_gender,
  c.extra
ORDER BY
  SaleYear, SaleMonth, SaleWeek, Brand, BuyerGender, BuyerIncomeRange;
