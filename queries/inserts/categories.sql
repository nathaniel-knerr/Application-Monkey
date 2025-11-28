-- @Block
DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories(
    category_name VARCHAR(255) PRIMARY KEY
);


-- @Block
INSERT INTO Categories(category_name) VALUES (
    'Frontend'
);


INSERT INTO Categories(category_name) VALUES (
    'Backend'
);


INSERT INTO Categories(category_name) VALUES (
    'Web Automation'
);


INSERT INTO Categories(category_name) VALUES (
    'Machine Learning'
);


INSERT INTO Categories(category_name) VALUES (
    'Database Development'
);


INSERT INTO Categories(category_name) VALUES (
    'Cloud Hosting'
);


INSERT INTO Categories(category_name) VALUES (
    'DevOps'
);


INSERT INTO Categories(category_name) VALUES (
    'AI Integration'
);


-- @Block
SELECT * FROM Categories;