-- @Block
DROP TABLE IF EXISTS Experiences;
CREATE TABLE Experiences (
    experience_name VARCHAR(255) PRIMARY KEY,
    description TEXT,
    start_year INT,
    start_month INT,
    end_year INT,
    end_month INT,
    experience_url TEXT
);


-- @Block
INSERT INTO Experiences(
    experience_name,
    description,
    start_year,
    start_month,
    end_year,
    end_month,
    experience_url
)
VALUES (
    'Google Mentorship', 
    E'
    Met with a google employee mentor every month for career guidance
    in the tech industry.
    ',
    2025,
    10,
    NULL,
    NULL,
    NULL
);


INSERT INTO Experiences(
    experience_name,
    description,
    start_year,
    start_month,
    end_year,
    end_month,
    experience_url
)
VALUES (
    'Deepiri AI: AI Systems Engineer Internship', 
    E'
    Built and maintained inference servers using 
    FastAPI/Uvicorn; scaled model-serving pipelines 
    with Docker/Kubernetes. Optimized request handling, 
    concurrency, and GPU memory usage; supported 
    versioned deployment of AI models. Assisted in A/B testing, 
    monitoring model performance, and collaborating on CI/CD pipelines.
    ',
    2025,
    11,
    NULL,
    NULL,
    NULL
);


INSERT INTO Experiences(
    experience_name,
    description,
    start_year,
    start_month,
    end_year,
    end_month,
    experience_url
)
VALUES (
    'Google for Developers Linear Regression Course', 
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
);


INSERT INTO Experiences(
    experience_name,
    description,
    start_year,
    start_month,
    end_year,
    end_month,
    experience_url
)
VALUES (
    'Google for Developers Logistic Regression Course', 
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
);


INSERT INTO Experiences(
    experience_name,
    description,
    start_year,
    start_month,
    end_year,
    end_month,
    experience_url
)
VALUES (
    'La Habra High School', 
    'Highest honors graduate with a 4.2+ GPA.',
    2021,
    8,
    2025,
    6,
    NULL
);


INSERT INTO Experiences(
    experience_name,
    description,
    start_year,
    start_month,
    end_year,
    end_month,
    experience_url
)
VALUES (
    'Cypress College', 
    E'
    Computer Science degree. Planning to transfer 
    to Cal State Fullerton in May, 2027 
    to complete Bachelor''s degree by May, 2029.
    ',
    2025,
    8,
    NULL,
    NULL,
    NULL
);


INSERT INTO Experiences(
    experience_name,
    description,
    start_year,
    start_month,
    end_year,
    end_month,
    experience_url
)
VALUES (
    'Simple Media', 
    'A social media app that is better for your mental health.',
    NULL,
    NULL,
    NULL,
    NULL,
    'https://simple-media-henna.vercel.app/'
);


INSERT INTO Experiences(
    experience_name,
    description,
    start_year,
    start_month,
    end_year,
    end_month,
    experience_url
)
VALUES (
    'Diction Daily', 
    'An educational tool that teaches a new English word every day.',
    NULL,
    NULL,
    NULL,
    NULL,
    'https://dictiondaily.com'
);


INSERT INTO Experiences(
    experience_name,
    description,
    start_year,
    start_month,
    end_year,
    end_month,
    experience_url
)
VALUES (
    'Snapshot API', 
    E'
    An easy to use web scraping tool to document public 
    webpages in frontend development environments.
    ',
    NULL,
    NULL,
    NULL,
    NULL,
    'https://github.com/nathaniel-knerr/SnapshotAPI'
);


-- @Block
SELECT * FROM Experiences;