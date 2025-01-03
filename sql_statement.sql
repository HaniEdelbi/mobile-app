INSERT INTO display (name, description, image, date, season, id)  
VALUES (
    'Demon Slayer', 
    'Demon Slayer follows Tanjiro on a quest to save his sister and defeat evil demons.', 
    'https://fr.web.img5.acsta.net/c_310_420/pictures/19/09/18/13/46/0198270.jpg', 
    'January 2025', 
    5, 
    1
);



DELETE FROM display  
WHERE name = 'Demon Slayer';



UPDATE display  
SET description = 'Demon Slayer is an anime following Tanjiro Kamado as he seeks to save his sister Nezuko and eliminate the Twelve Kizuki demons.'  
WHERE name = 'Demon Slayer';



CREATE TABLE display (
    id INT PRIMARY KEY, 
    name TEXT,
    description TEXT, 
    image TEXT,
    date TEXT, 
    season TEXT
);


SELECT * FROM display;


SELECT name, description FROM display;


SELECT * FROM display WHERE name = 'Demon Slayer';
