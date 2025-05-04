CREATE TABLE person (
    id INT(10) NOT NULL AUTO_INCREMENT,
    pesel INT(11),
    identity_document_number VARCHAR(50) NOT NULL,
    name VARCHAR(255) NOT NULL,
    second_name VARCHAR(50),
    surname VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    gender_id INT(10) NOT NULL,
    country_of_origin_id INT(10) NOT NULL,
    personal_email VARCHAR(255) NOT NULL,
    photo_url VARCHAR(255),
    address INT(10) NOT NULL,
    current_degree_id INT(10),
    PRIMARY KEY (id)
);
CREATE TABLE employee (
    id INT(10) NOT NULL AUTO_INCREMENT,
    person_id INT(10) NOT NULL,
    employee_email VARCHAR(255) NOT NULL UNIQUE,
    password CHAR(255) NOT NULL,
    salary_account_id INT(10) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE employee_position (
    id INT(10) NOT NULL AUTO_INCREMENT,
    position_id INT(10) NOT NULL,
    employee_id INT(10) NOT NULL,
    salary NUMERIC(10 , 2 ) NOT NULL,
    begin_date DATE NOT NULL,
    end_date DATE,
    faculty_id INT(10),
    PRIMARY KEY (id)
);
CREATE TABLE position (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    min_salary NUMERIC(10 , 2 ),
    max_salary NUMERIC(10 , 2 ),
    is_didactical BIT(1) NOT NULL,
    description VARCHAR(1000),
    PRIMARY KEY (id)
);
CREATE TABLE phone_number (
    id INT(10) NOT NULL AUTO_INCREMENT,
    number VARCHAR(255) NOT NULL UNIQUE,
    is_personal BIT(1) NOT NULL,
    employee_id INT(10),
    PRIMARY KEY (id)
);
CREATE TABLE gender (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);
CREATE TABLE country (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    is_eu_member BIT(1) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE address (
    id INT(10) NOT NULL AUTO_INCREMENT,
    street_name VARCHAR(255),
    building_number VARCHAR(255) NOT NULL,
    flat_number VARCHAR(255),
    post_code VARCHAR(255),
    locality VARCHAR(255) NOT NULL,
    administrative_unit VARCHAR(255),
    country_id INT(10) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE building (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address_id INT(10) NOT NULL,
    facility_id INT(10) NOT NULL,
    is_main_for_facility BIT(1) NOT NULL,
    gatehouse_phone_number_id INT(10),
    PRIMARY KEY (id)
);
CREATE TABLE facility (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);
CREATE TABLE student (
    index_number INT(10) NOT NULL AUTO_INCREMENT,
    person_id INT(10) NOT NULL,
    student_email VARCHAR(255) NOT NULL UNIQUE,
    password CHAR(255) NOT NULL,
    expenses_account_id INT(10) NOT NULL,
    incomes_account_id INT(10),
    PRIMARY KEY (index_number)
);
CREATE TABLE bank_account (
    id INT(10) NOT NULL AUTO_INCREMENT,
    number INT(10) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);
CREATE TABLE student_studies (
    id INT(10) NOT NULL AUTO_INCREMENT,
    student_index_number INT(10) NOT NULL,
    studies_offer_id INT(10) NOT NULL,
    thesis_id INT(10),
    current_semester INT(10),
    start_date DATE NOT NULL,
    end_date DATE,
    PRIMARY KEY (id)
);
CREATE TABLE thesis (
    id INT(10) NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    abstract VARCHAR(255) NOT NULL,
    contents_url VARCHAR(255) NOT NULL,
    author_lesson_group_id INT(10) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE room (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    floor_number INT(10) NOT NULL,
    building_id INT(10) NOT NULL,
    didactical BIT(1) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE lesson (
    id INT(10) NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    star_hour TIME(6) NOT NULL,
    end_hour TIME(6) NOT NULL,
    lesson_group_id INT(10) NOT NULL,
    teacher_employee_id INT(10) NOT NULL,
    is_canceled BIT(1) NOT NULL,
    room_id INT(10),
    virtual_lesson_url VARCHAR(255),
    PRIMARY KEY (id)
);
CREATE TABLE student_lesson_participation (
    id INT(10) NOT NULL AUTO_INCREMENT,
    student_was_present BIT(1),
    lesson_id INT(10) NOT NULL,
    student_studies_id INT(10) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE lesson_group (
    id INT(10) NOT NULL AUTO_INCREMENT,
    lead_teacher_employee_id INT(10) NOT NULL,
    course_year_id INT(10) NOT NULL,
    resources_url VARCHAR(255),
    max_students INT(10),
    PRIMARY KEY (id)
);
CREATE TABLE grade (
    id INT(10) NOT NULL AUTO_INCREMENT,
    student_studies_id INT(10) NOT NULL,
    grade_value_id INT(10) NOT NULL,
    lesson_group_id INT(10) NOT NULL,
    description VARCHAR(255) NOT NULL,
    is_final BIT(1) NOT NULL,
    creation_date DATE NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE grade_value (
    id INT(10) NOT NULL AUTO_INCREMENT,
    value NUMERIC(2 , 1 ) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE course_year (
    id INT(10) NOT NULL AUTO_INCREMENT,
    course_id INT(10) NOT NULL,
    description VARCHAR(255),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE course (
    id INT(10) NOT NULL AUTO_INCREMENT,
    description VARCHAR(255),
    ects INT(10) NOT NULL,
    course_form_id INT(10) NOT NULL,
    course_group_id INT(10) NOT NULL,
    lesson_hours INT(10) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE course_form (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);
CREATE TABLE course_group (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    PRIMARY KEY (id)
);
CREATE TABLE course_group_for_studies (
    id INT(10) NOT NULL AUTO_INCREMENT,
    course_group_id INT(10) NOT NULL,
    lead_teacher_employee_id INT(10) NOT NULL,
    studies_offer_id INT(10) NOT NULL,
    semester INT(10) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE studies_offer (
    id INT(10) NOT NULL AUTO_INCREMENT,
    form_of_studies_id INT(10) NOT NULL,
    specialization_id INT(10) NOT NULL,
    degree_id INT(10) NOT NULL,
    price_per_semester NUMERIC(10 , 2 ),
    semesters INT(10) NOT NULL,
    introduction_date DATE NOT NULL,
    closure_date DATE,
    PRIMARY KEY (id)
);
CREATE TABLE degree (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);
CREATE TABLE form_of_studies (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);
CREATE TABLE specialization (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    major_id INT(10) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE major (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    faculty_id INT(10) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE faculty (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);
CREATE TABLE non_didactic_work (
    id INT(10) NOT NULL AUTO_INCREMENT,
    room_id INT(10),
    employee_id INT(10) NOT NULL,
    day_of_week INT(10) NOT NULL,
    start_hour TIME(6) NOT NULL,
    end_hour TIME(6) NOT NULL,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
ALTER TABLE employee ADD CONSTRAINT FKemployee944641 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE employee_position ADD CONSTRAINT FKemployee_p571892 FOREIGN KEY (employee_id) REFERENCES employee (id);
ALTER TABLE employee_position ADD CONSTRAINT FKemployee_p621508 FOREIGN KEY (position_id) REFERENCES position (id);
ALTER TABLE phone_number ADD CONSTRAINT FKphone_numb212326 FOREIGN KEY (employee_id) REFERENCES employee (id);
ALTER TABLE person ADD CONSTRAINT FKperson420544 FOREIGN KEY (gender_id) REFERENCES gender (id);
ALTER TABLE person ADD CONSTRAINT FKperson821001 FOREIGN KEY (country_of_origin_id) REFERENCES country (id);
ALTER TABLE address ADD CONSTRAINT FKaddeess698049 FOREIGN KEY (country_id) REFERENCES country (id);
ALTER TABLE person ADD CONSTRAINT FKperson483764 FOREIGN KEY (address) REFERENCES address (id);
ALTER TABLE building ADD CONSTRAINT FKbuilding667999 FOREIGN KEY (address_id) REFERENCES address (id);
ALTER TABLE building ADD CONSTRAINT FKbuilding748886 FOREIGN KEY (facility_id) REFERENCES facility (id);
ALTER TABLE employee ADD CONSTRAINT FKemployee963428 FOREIGN KEY (salary_account_id) REFERENCES bank_account (id);
ALTER TABLE student ADD CONSTRAINT FKstudent139026 FOREIGN KEY (expenses_account_id) REFERENCES bank_account (id);
ALTER TABLE student ADD CONSTRAINT FKstudent20731 FOREIGN KEY (incomes_account_id) REFERENCES bank_account (id);
ALTER TABLE student ADD CONSTRAINT FKstudent673969 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE student_studies ADD CONSTRAINT FKstudent_st525967 FOREIGN KEY (student_index_number) REFERENCES student (index_number);
ALTER TABLE student_studies ADD CONSTRAINT FKstudent_st903931 FOREIGN KEY (thesis_id) REFERENCES thesis (id);
ALTER TABLE room ADD CONSTRAINT FKroom678490 FOREIGN KEY (building_id) REFERENCES building (id);
ALTER TABLE lesson ADD CONSTRAINT FKlesson199682 FOREIGN KEY (room_id) REFERENCES room (id);
ALTER TABLE lesson ADD CONSTRAINT FKlesson93917 FOREIGN KEY (teacher_employee_id) REFERENCES employee (id);
ALTER TABLE student_lesson_participation ADD CONSTRAINT FKstudent_le758271 FOREIGN KEY (lesson_id) REFERENCES lesson (id);
ALTER TABLE lesson_group ADD CONSTRAINT FKlesson_gro115569 FOREIGN KEY (lead_teacher_employee_id) REFERENCES employee (id);
ALTER TABLE grade ADD CONSTRAINT FKgrade575941 FOREIGN KEY (grade_value_id) REFERENCES grade_value (id);
ALTER TABLE lesson_group ADD CONSTRAINT FKlesson_gro151379 FOREIGN KEY (course_year_id) REFERENCES course_year (id);
ALTER TABLE course_year ADD CONSTRAINT FKcourse_yea376818 FOREIGN KEY (course_id) REFERENCES course (id);
ALTER TABLE course ADD CONSTRAINT FKcourse632935 FOREIGN KEY (course_form_id) REFERENCES course_form (id);
ALTER TABLE course ADD CONSTRAINT FKcourse995799 FOREIGN KEY (course_group_id) REFERENCES course_group (id);
ALTER TABLE course_group_for_studies ADD CONSTRAINT FKcourse_gro501094 FOREIGN KEY (course_group_id) REFERENCES course_group (id);
ALTER TABLE course_group_for_studies ADD CONSTRAINT FKcourse_gro658200 FOREIGN KEY (lead_teacher_employee_id) REFERENCES employee (id);
ALTER TABLE student_studies ADD CONSTRAINT FKstudent_st805242 FOREIGN KEY (studies_offer_id) REFERENCES studies_offer (id);
ALTER TABLE course_group_for_studies ADD CONSTRAINT FKcourse_gro1099 FOREIGN KEY (studies_offer_id) REFERENCES studies_offer (id);
ALTER TABLE studies_offer ADD CONSTRAINT FKstudies_of677512 FOREIGN KEY (degree_id) REFERENCES degree (id);
ALTER TABLE studies_offer ADD CONSTRAINT FKstudies_of898636 FOREIGN KEY (form_of_studies_id) REFERENCES form_of_studies (id);
ALTER TABLE studies_offer ADD CONSTRAINT FKstudies_of349531 FOREIGN KEY (specialization_id) REFERENCES specialization (id);
ALTER TABLE specialization ADD CONSTRAINT FKspecializa479976 FOREIGN KEY (major_id) REFERENCES major (id);
ALTER TABLE major ADD CONSTRAINT FKmajor899040 FOREIGN KEY (faculty_id) REFERENCES faculty (id);
ALTER TABLE employee_position ADD CONSTRAINT FKemployee_p247780 FOREIGN KEY (faculty_id) REFERENCES faculty (id);
ALTER TABLE lesson ADD CONSTRAINT FKlesson552004 FOREIGN KEY (lesson_group_id) REFERENCES lesson_group (id);
ALTER TABLE grade ADD CONSTRAINT FKgrade267791 FOREIGN KEY (lesson_group_id) REFERENCES lesson_group (id);
ALTER TABLE thesis ADD CONSTRAINT FKthesis112663 FOREIGN KEY (author_lesson_group_id) REFERENCES lesson_group (id);
ALTER TABLE student_lesson_participation ADD CONSTRAINT FKstudent_le292102 FOREIGN KEY (student_studies_id) REFERENCES student_studies (id);
ALTER TABLE grade ADD CONSTRAINT FKgrade545101 FOREIGN KEY (student_studies_id) REFERENCES student_studies (id);
ALTER TABLE non_didactic_work ADD CONSTRAINT FKnon_didact696924 FOREIGN KEY (room_id) REFERENCES room (id);
ALTER TABLE non_didactic_work ADD CONSTRAINT FKnon_didact856912 FOREIGN KEY (employee_id) REFERENCES employee (id);
ALTER TABLE building ADD CONSTRAINT FKbuilding135257 FOREIGN KEY (gatehouse_phone_number_id) REFERENCES phone_number (id);
ALTER TABLE person ADD CONSTRAINT FKperson29477 FOREIGN KEY (current_degree_id) REFERENCES degree (id);