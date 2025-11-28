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
INSERT INTO ExperienceCategories (
    experience_name,
    category_name
)
Values
-- Deepiri AI: AI Systems Engineer Internship
(
   'Deepiri AI: AI Systems Engineer Internship',
   'Backend'
),
(
   'Deepiri AI: AI Systems Engineer Internship',
   'DevOps'
),
(
   'Deepiri AI: AI Systems Engineer Internship',
   'AI Integration'
),
-- Google for Developers Linear Regression Course
(
   'Google for Developers Linear Regression Course',
   'Machine Learning'
),
-- Simple Media
(
   'Simple Media',
   'Frontend'
),
(
   'Simple Media',
   'Backend'
),
(
   'Simple Media',
   'Database Development'
),
(
   'Simple Media',
   'Cloud Hosting'
),
-- Diction Daily
(
   'Diction Daily',
   'Backend'
),
(
   'Diction Daily',
   'Frontend'
),
(
   'Diction Daily',
   'Database Development'
),
(
   'Diction Daily',
   'Cloud Hosting'
),
-- Snapshot API
(
   'Snapshot API',
   'Backend'
),
(
   'Snapshot API',
   'Web Automation'
),
(
   'Snapshot API',
   'Cloud Hosting'
);


-- @Block
SELECT * FROM Categories;


-- @Block
SELECT * FROM Experiences;


-- @Block
SELECT * FROM ExperienceCategories;