-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/CUTCEL
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "DEPARTMENTS" (
    "ID" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_DEPARTMENTS" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "DEPT_EMP" (
    "ID" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_DEPT_EMP" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "DEPT_MANAGER" (
    "dept_no" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_DEPT_MANAGER" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "EMPLOYEES" (
    "emp_no" INTEGER   NOT NULL,
    "brith_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" CHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_EMPLOYEES" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "SALARIES" (
    "ID" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_SALARIES" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "TITLES" (
    "ID" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_TITLES" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "DEPARTMENTS" ADD CONSTRAINT "fk_DEPARTMENTS_dept_no" FOREIGN KEY("dept_no")
REFERENCES "DEPT_MANAGER" ("dept_no");

ALTER TABLE "DEPT_EMP" ADD CONSTRAINT "fk_DEPT_EMP_emp_no" FOREIGN KEY("emp_no")
REFERENCES "EMPLOYEES" ("emp_no");

ALTER TABLE "DEPT_MANAGER" ADD CONSTRAINT "fk_DEPT_MANAGER_emp_no" FOREIGN KEY("emp_no")
REFERENCES "EMPLOYEES" ("emp_no");

ALTER TABLE "SALARIES" ADD CONSTRAINT "fk_SALARIES_emp_no" FOREIGN KEY("emp_no")
REFERENCES "EMPLOYEES" ("emp_no");

ALTER TABLE "TITLES" ADD CONSTRAINT "fk_TITLES_emp_no" FOREIGN KEY("emp_no")
REFERENCES "EMPLOYEES" ("emp_no");

