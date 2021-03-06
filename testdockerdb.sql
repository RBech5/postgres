CREATE DATABASE mydb;
\connect mydb;

CREATE TABLE mytable (
    id integer NOT NULL,
    "Nom" text NOT NULL,
    "Ville" text NOT NULL,
    "Age" integer NOT NULL
);


COPY mytable (id, "Nom", "Ville", "Age") FROM stdin;
1	Rudy	Paris	22
2	Qi	Versailles	24
\.


ALTER TABLE ONLY mytable
    ADD CONSTRAINT mytable_pkey PRIMARY KEY (id);
