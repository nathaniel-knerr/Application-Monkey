-- @Block
DROP TABLE IF EXISTS ExperienceSkills;
CREATE TABLE ExperienceSkills(
    experience_name VARCHAR(255),
    skill_name VARCHAR(255),
    prevalence INT NOT NULL,

    FOREIGN KEY (experience_name) REFERENCES Experiences(experience_name) ON DELETE CASCADE,
    FOREIGN KEY (skill_name) REFERENCES Skills(skill_name) ON DELETE CASCADE,

    PRIMARY KEY (experience_name, skill_name)
);


-- @Block
-- Deepiri AI: AI Systems Engineer Internship
INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Deepiri AI: AI Systems Engineer Internship',
    'Docker',
    8
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Deepiri AI: AI Systems Engineer Internship',
    'Python',
    5
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Deepiri AI: AI Systems Engineer Internship',
    'Linux/Ubuntu',
    8
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Deepiri AI: AI Systems Engineer Internship',
    'Git',
    8
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Deepiri AI: AI Systems Engineer Internship',
    'GitHub',
    10
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Deepiri AI: AI Systems Engineer Internship',
    'LangChain',
    7
);


-- Simple Media
INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Simple Media',
    'GitHub',
    7
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Simple Media',
    'MySQL',
    7
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Simple Media',
    'Angular',
    10
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Simple Media',
    'Firebase',
    6
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Simple Media',
    'TypeScript',
    8
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Simple Media',
    'Vercel',
    5
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Simple Media',
    'Express.js',
    7
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Simple Media',
    'SCSS',
    6
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Simple Media',
    'HTML',
    6
);


--Diction Daily
INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Diction Daily',
    'CSS',
    6
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Diction Daily',
    'Netlify',
    10
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Diction Daily',
    'React',
    10
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Diction Daily',
    'Node.js',
    8
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Diction Daily',
    'HTML',
    6
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Diction Daily',
    'Firebase',
    8
);


--Snapshot API
INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Snapshot API',
    'Puppeteer',
    10
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Snapshot API',
    'Express.js',
    9
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Snapshot API',
    'Render',
    5
);


INSERT INTO ExperienceSkills (
    experience_name,
    skill_name,
    prevalence
)
Values (
    'Snapshot API',
    'GitHub',
    8
);


-- @Block
SELECT * FROM Skills;


-- @Block
SELECT * FROM Experiences;


-- @Block
SELECT * FROM ExperienceSkills;