-- @Block
DROP TABLE IF EXISTS PersonalInformation;
CREATE TABLE PersonalInformation (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    country VARCHAR(255),
    website_url TEXT,
    github_url TEXT,
    linkedin_url TEXT,
    resume_url TEXT
);


-- @Block
DROP TABLE IF EXISTS Skills;
CREATE TABLE Skills(
    skill_name VARCHAR(255) PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    years_experience INT NOT NULL,
    proficiency INT NOT NULL
);


-- @Block
DROP TABLE IF EXISTS Experiences;
CREATE TABLE Experiences(
    experience_name VARCHAR(255) PRIMARY KEY,
    description TEXT NOT NULL,
    experience_url TEXT,
);


-- @Block
DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories(
    category_name VARCHAR(255) PRIMARY KEY
)


-- @Block
DROP TABLE IF EXISTS ExperienceSkills;
CREATE TABLE ExperienceSkills(
    experience_name VARCHAR(255),
    skill_name VARCHAR(255),
    prevalence INT NOT NULL,

    FOREIGN KEY experience_name REFERENCES Experiences(experience_name) ON DELETE CASCADE,
    FOREIGN KEY skill_name REFERENCES Skills(skill_name) ON DELETE CASCADE,

    PRIMARY KEY (experience_name, skill_name)
);


-- @Block
DROP TABLE IF EXISTS ExperienceCategories;
CREATE TABLE ExperienceCategories(
    experience_name VARCHAR(255),
    category_name VARCHAR(255),

    FOREIGN KEY (experience_name) REFERENCES Experiences(experience_name) ON DELETE CASCADE,
    FOREIGN KEY (category_name) REFERENCES Categories(category_name) ON DELETE CASCADE,

    PRIMARY KEY (experience_name, category_name)
);


-- @Block
DROP TABLE IF EXISTS Values;
CREATE TABLE Values(
    value_name VARCHAR(255) PRIMARY KEY,
    importance INT NOT NULL
);


-- @Block
DROP TABLE IF EXISTS ExperienceValues;
CREATE TABLE ExperienceValues(
    experience_name VARCHAR(255),
    value_name VARCHAR(255),
    prevalence INT NOT NULL,

    FOREIGN KEY experience_name REFERENCES Experiences(experience_name) ON DELETE CASCADE,
    FOREIGN KEY value_name REFERENCES Values(value_name) ON DELETE CASCADE,

    PRIMARY KEY (experience_name, value_name)
);


-- @Block
SELECT * FROM PersonalInformation;


-- @Block
SELECT * FROM Skills;


-- @Block
SELECT * FROM Categories;