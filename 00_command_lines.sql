INSERT INTO cats2 (id, name, age, breed, net_worth) VALUES (1, "Maru", 3, "Scottish Fold", 1000000);
INSERT INTO cats2 (id, name, age, breed, net_worth) VALUES (2, "Hana", 1, "Tabby", 21800);
INSERT INTO cats2 (id, name, age, breed, net_worth) VALUES (3, "Grumpy Cat", 4, "Persian", 181600);
INSERT INTO cats2 (id, name, age, breed, net_worth) VALUES (4, "Lil\' Bub", 2, "Tortoiseshell", 2000000);

INSERT INTO owners (name) VALUES ("mugumogu");
INSERT INTO owners (name) VALUES ("Sophie");
INSERT INTO owners (name) VALUES ("Penny");

INSERT INTO cats_owners (cat_id, owner_id) VALUES (2, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (4, 3);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (1, 2);