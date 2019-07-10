CREATE TABLE "Dept_manager" (
    "dept_no" VARCHAR(4)   NOT NULL,
    "emp_no" VARCHAR(30)   NOT NULL,
    "from_date" VARCHAR(10)   NOT NULL,
    "to_date" VARCHAR(10)   NOT NULL
);

CREATE TABLE "Department" (
    "dept_no" VARCHAR(4)   NOT NULL,
    "dept_name" VARCHAR(200)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_emp" (
    "emp_no" VARCHAR(30)   NOT NULL,
    "dept_no" VARCHAR(4)   NOT NULL,
    "from_date" VARCHAR(10)   NOT NULL,
    "to_date" VARCHAR(10)   NOT NULL
);


CREATE TABLE "Employees" (
    "emp_no" VARCHAR(30)   NOT NULL,
	"birth_date" VARCHAR(10)   NOT NULL,
    "first_name" VARCHAR(100)   NOT NULL,
    "last_name" VARCHAR(100)   NOT NULL,
    "gender" VARCHAR(1)   NOT NULL,
    "hire_date" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" VARCHAR(30)   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" VARCHAR(10)   NOT NULL,
    "to_date" VARCHAR(10)   NOT NULL
);

CREATE TABLE "Titles" (
    "emp_no" VARCHAR(30)   NOT NULL,
    "titles" VARCHAR(100)   NOT NULL,
    "from_date" VARCHAR(10)   NOT NULL,
    "to_date" VARCHAR(10)   NOT NULL
);

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Department" ("dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Department" ("dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

SELECT * FROM "Titles";