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
INSERT INTO PersonalInformation (first_name, middle_name, last_name, email, phone, location, country, website_url, github_url, linkedin_url, resume_url)
VALUES (
    'Nathaniel', 
    'Robert', 
    'Knerr', 
    'n.knerr@yahoo.com', 
    '+1 (562) 844-6841',
    'La Habra, CA',
    'USA',
    NULL, 
    'https://github.com/nathaniel-knerr', 
    'https://www.linkedin.com/in/nathaniel-knerr-91210a27b/', 
    'https://docs.google.com/document/d/1x7wLajDP0taCMJVPLHbYOf22Rdo3xI6IybYztIabiq0/edit?tab=t.0'
);


-- @Block
SELECT * FROM PersonalInformation;