CREATE TABLE gallery (
    "id" SERIAL PRIMARY KEY,
    "path" VARCHAR(256) NOT NULL,
    "description" VARCHAR(256),
    "likes" INTEGER
);

INSERT INTO gallery ("path", "description", "likes")
VALUES ('images/Atium.jpg', 'Allomantic Symbol for Atium.'),
('images/Brass.jpg', 'Allomantic Symbol for Brass.', 0),
('images/Bronze.jpg', 'Allomantic Symbol for Bronze.', 0),
('images/Copper.jpg', 'Allomantic Symbol for Copper.', 0),
('images/Gold.jpg', 'Allomantic Symbol for Gold.', 0),
('images/Iron.jpg', 'Allomantic Symbol for Iron.', 0),
('images/Pewter.jpg', 'Allomantic Symbol for Pewter.', 0),
('images/Steel.jpg', 'Allomantic Symbol for Steel.', 0),
('images/Tin.jpg', 'Allomantic Symbol for Tin.', 0),
('images/Zinc.jpg', 'Allomantic Symbol for Zinc.', 0);

SELECT * FROM gallery ORDER BY path;