-- @Block
DROP TABLE IF EXISTS Values;
CREATE TABLE Values(
    value_name VARCHAR(255) PRIMARY KEY,
    emphasis INT NOT NULL
);


-- @Block
INSERT INTO Values(value_name, emphasis)
VALUES (
    'Resilience',
    7
);


INSERT INTO Values(value_name, emphasis)
VALUES (
    'Initiative',
    6
);


INSERT INTO Values(value_name, emphasis)
VALUES (
    'Growth Mindset',
    10
);


INSERT INTO Values(value_name, emphasis)
VALUES (
    'Problem Solving',
    10
);


INSERT INTO Values(value_name, emphasis)
VALUES (
    'Creativity',
    8
);


INSERT INTO Values(value_name, emphasis)
VALUES (
    'Communication',
    6
);


INSERT INTO Values(value_name, emphasis)
VALUES (
    'Innovation',
    10
);


INSERT INTO Values(value_name, emphasis)
VALUES (
    'Collaboration', 
    6
);


INSERT INTO Values(value_name, emphasis)
VALUES (
    'Impact',
    10
);


-- @Block
SELECT * FROM Values;