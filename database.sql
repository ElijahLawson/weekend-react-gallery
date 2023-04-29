CREATE TABLE gallery (
    "id" SERIAL PRIMARY KEY,
    "path" VARCHAR(256) NOT NULL,
    "description" VARCHAR(256),
    "likes" INTEGER
);

INSERT INTO gallery ("path", "description", "likes")
VALUES ('images/Atium.jpg', 'Allomantic Symbol for Atium.'),
    ('images/mistborn/Brass.jpg', 'Allomantic Symbol for Brass.', 0),
    ('images/mistborn/Bronze.jpg', 'Allomantic Symbol for Bronze.', 0),
    ('images/mistborn/Copper.jpg', 'Allomantic Symbol for Copper.', 0),
    ('images/mistborn/Gold.jpg', 'Allomantic Symbol for Gold.', 0),
    ('images/mistborn/Iron.jpg', 'Allomantic Symbol for Iron.', 0),
    ('images/mistborn/Pewter.jpg', 'Allomantic Symbol for Pewter.', 0),
    ('images/mistborn/Steel.jpg', 'Allomantic Symbol for Steel.', 0),
    ('images/mistborn/Tin.jpg', 'Allomantic Symbol for Tin.', 0),
    ('images/mistborn/Zinc.jpg', 'Allomantic Symbol for Zinc.', 0);

SELECT * FROM gallery ORDER BY path;

CREATE TABLE way_of_kings (
    "id" SERIAL PRIMARY KEY,
    "path" VARCHAR(256) NOT NULL,
    "description" VARCHAR(256),
    "likes" INTEGER
);

INSERT INTO way_of_kings ("path", "description", "likes")
VALUES ('images/way-of-kings/Transformation.jpg', 'Symbol of Transformation Surge.', 0),
    ('images/way-of-kings/Abrasion.jpg', 'Symbol of Abrasion Surge.', 0),
    ('images/way-of-kings/Adhesion.jpg', 'Symbol of Adhesion Surge.', 0),
    ('images/way-of-kings/Cohesion.jpg', 'Symbol of Cohesion Surge.', 0),
    ('images/way-of-kings/Division.jpg', 'Symbol of Division Surge.', 0),
    ('images/way-of-kings/Gravitation.jpg', 'Symbol of Gravitation Surge.', 0),
    ('images/way-of-kings/Illumination.jpg', 'Symbol of Illumination Surge.', 0),
    ('images/way-of-kings/Progression.jpg', 'Symbol of Progression Surge.', 0),
    ('images/way-of-kings/Tension.jpg', 'Symbol of Tension Surge.', 0),
    ('images/way-of-kings/Transportation.jpg', 'Symbol of Transportation Surge.', 0);

SELECT * FROM way_of_kings ORDER BY path;

CREATE TABLE elantris (
    "id" SERIAL PRIMARY KEY,
    "path" VARCHAR(256) NOT NULL,
    "description" VARCHAR(256),
    "likes" INTEGER
);

INSERT INTO elantris ("path", "description", "likes")
VALUES ('images/elantris/Aan.jpg', 'Aon Aan - Truth, Fact', 0),
    ('images/elantris/Aeo.jpg', 'Aon Aan - Bravery', 0),
    ('images/elantris/Aha.jpg', 'Aon Aha - Breath, Air', 0),
    ('images/elantris/Ake.jpg', 'Aon Ake - West', 0),
    ('images/elantris/Ala.jpg', 'Aon Ala - Beauty, Handsomeness', 0),
    ('images/elantris/Are.jpg', 'Aon Are - Unity, Cohesion', 0),
    ('images/elantris/Ashe.jpg', 'Aon Ashe - Light, Illumination', 0),
    ('images/elantris/Ata.jpg', 'Aon Ata - Grace, Smoothness', 0),
    ('images/elantris/Ati.jpg', 'Aon Ati - Hope', 0),
    ('images/elantris/Ato.jpg', 'Aon Ato - North', 0),
    ('images/elantris/Daa.jpg', 'Aon Daa - Power, Energy', 0),
    ('images/elantris/Dao.jpg', 'Aon Dao - Stability, Securty', 0),
    ('images/elantris/Deo.jpg', 'Aon Deo - Gold, Metal', 0),
    ('images/elantris/Dii.jpg', 'Aon Dii - Wood', 0),
    ('images/elantris/Dio.jpg', 'Aon Dio - Steadfast, Immovable', 0),
    ('images/elantris/Eda.jpg', 'Aon Eda - Superior, Lofty', 0),
    ('images/elantris/Edo.jpg', 'Aon Edo - Protection, Safety', 0),
    ('images/elantris/Ehe.jpg', 'Aon Ehe - Fire, Warmth', 0),
    ('images/elantris/Ela.jpg', 'Aon Ela - Focus, Center', 0),
    ('images/elantris/Ena.jpg', 'Aon Ena - Kindness', 0),
    ('images/elantris/Ene.jpg', 'Aon Ene - Wit, Cleverness', 0),
    ('images/elantris/Eno.jpg', 'Aon Eno - Water', 0),
    ('images/elantris/Eon.jpg', 'Aon Eon - Willpower, Endurance', 0),
    ('images/elantris/Eshe.jpg', 'Aon Eshe - Gift, Endowment', 0),
    ('images/elantris/Eto.jpg', 'Aon Eto - Body, Flesh, Muscle', 0),
    ('images/elantris/Iad.jpg', 'Aon Iad - Trust, Reliable', 0),
    ('images/elantris/Ial.jpg', 'Aon Ial - Helpfulness, Aid', 0),
    ('images/elantris/Ido.jpg', 'Aon Ido - Mercy, Forgiveness', 0),
    ('images/elantris/Ien.jpg', 'Aon Ien - Wisdom', 0),
    ('images/elantris/Ire.jpg', 'Aon Ire - Time, Age', 0),
    ('images/elantris/Kii.jpg', 'Aon Kii - Justice', 0),
    ('images/elantris/Mea.jpg', 'Aon Mea - Thoughtfulness, Caringness', 0),
    ('images/elantris/Nae.jpg', 'Aon Nae - Sight, Clarity', 0),
    ('images/elantris/Omi.jpg', 'Aon Omi - Love', 0),
    ('images/elantris/Opa.jpg', 'Aon Opa - Flower', 0),
    ('images/elantris/Rao.jpg', 'Aon Rao - Spirit, Essence', 0),
    ('images/elantris/Reo.jpg', 'Aon Reo - Punishment, Retribution', 0),
    ('images/elantris/Rii.jpg', 'Aon Rii - Wealth, Affluence', 0),
    ('images/elantris/Sao.jpg', 'Aon Sao - Intelligence, Learning', 0),
    ('images/elantris/Sea.jpg', 'Aon Sea - Chastity Faithfulness', 0),
    ('images/elantris/Seo.jpg', 'Aon Seo - Loyalty, Service', 0),
    ('images/elantris/Shao.jpg', 'Aon Shao - Transform, Change', 0),
    ('images/elantris/Sheo.jpg', 'Aon Sheo - Death', 0),
    ('images/elantris/Soi.jpg', 'Aon Soi - Order, Organized', 0),
    ('images/elantris/Soo.jpg', 'Aon Soo - Mathematics', 0),
    ('images/elantris/Tae.jpg', 'Aon Tae - Open', 0),
    ('images/elantris/Teo.jpg', 'Aon Teo - Royal Majestic', 0),
    ('images/elantris/Tia.jpg', 'Aon Tia - Travel, Transportation', 0),
    ('images/elantris/Toa.jpg', 'Aon Toa - South', 0);
    
    

SELECT * FROM elantris ORDER BY path;