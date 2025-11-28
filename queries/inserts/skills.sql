-- @Block
DROP TABLE IF EXISTS Skills;
CREATE TABLE Skills(
    skill_name VARCHAR(255) PRIMARY KEY,
    category VARCHAR(255) NOT NULL,
    years_experience INT NOT NULL,
    proficiency INT NOT NULL
);


-- Proficiency is 1-10
-- @Block
INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Docker',
    'DevOps',
    1,
    2
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Node.js',
    'Backend',
    3,
    8
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'TypeScript',
    'Backend',
    2,
    7
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Python',
    'Backend',
    4,
    7
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'C++',
    'Backend',
    2,
    5
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Git',
    'DevOps',
    3,
    3
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'GitHub',
    'DevOps',
    3,
    4
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'MySQL',
    'Database Development',
    1,
    7
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'PostgreSQL',
    'Database Development',
    1,
    7
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Express.js',
    'Backend',
    1,
    6
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Scikit-Learn',
    'Machine Learning',
    1,
    4
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Puppeteer',
    'Web Automation',
    2,
    6
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Playwright',
    'Web Automation',
    2,
    6
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Firebase',
    'Database Development',
    2,
    6
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Tailwind CSS',
    'Frontend',
    1,
    6
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'React',
    'Frontend',
    2,
    6
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Angular',
    'Frontend',
    1,
    6
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Next.js',
    'Frontend',
    1,
    5
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Linux/Ubuntu',
    'DevOps',
    1,
    5
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'OpenAI API',
    'AI Integration',
    2,
    5
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Netlify',
    'Cloud Hosting',
    3,
    7
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Vercel',
    'Cloud Hosting',
    1,
    6
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'Render',
    'Cloud Hosting',
    1,
    5
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'HTML', 
    'Frontend', 
    3, 
    9
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'CSS', 
    'Frontend', 
    3, 
    8
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'SCSS', 
    'Frontend', 
    2, 
    6
);


INSERT INTO Skills (skill_name, category, years_experience, proficiency)
VALUES (
    'LangChain', 
    'AI Integration', 
    1, 
    4
);


-- @Block
SELECT * FROM Skills;


-- @Block
SELECT * FROM Categories;