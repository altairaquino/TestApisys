CREATE TABLE public.student (
  id BIGSERIAL, 
  birthday DATE, 
  description TEXT, 
  email VARCHAR(100), 
  enabled BOOLEAN, 
  gender VARCHAR(255), 
  name VARCHAR(100), 
  CONSTRAINT student_pkey PRIMARY KEY(id)
) WITHOUT OIDS;

CREATE SEQUENCE public.student_id_seq
  INCREMENT 1 MINVALUE 1
  MAXVALUE 9223372036854775807 START 1
  CACHE 1;