INSERT INTO institution(name, description) VALUES ('Fundacja 1', 'Pomagamy wszystkim');
INSERT INTO institution(name, description) VALUES ('Fundacja 2', 'Misja cel 1');
INSERT INTO institution(name, description) VALUES ('Fundacja 3', 'Misja cel 4');
INSERT INTO institution(name, description) VALUES ('Fundacja 4', 'Misja cel 5');
INSERT INTO institution(name, description) VALUES ('Fundacja piąta', 'Misja cel numer pięć');
INSERT INTO institution(name, description) VALUES ('Fundacja szósta', 'Misja cel numer sześć');

INSERT INTO donation(city, quantity, institution_id) VALUES ('Warszawa', 2, 1);
INSERT INTO donation(city, quantity, institution_id) VALUES ('Poznań', 1, 1);
INSERT INTO donation(city, quantity, institution_id) VALUES ('Piaseczno', 3, 4);

INSERT INTO category(name) VALUES ('zabawki');
INSERT INTO category(name) VALUES ('gry');
INSERT INTO category(name) VALUES ('bluzy');
INSERT INTO category(name) VALUES ('jedzenie');
INSERT INTO category(name) VALUES ('buty');
INSERT INTO category(name) VALUES ('kurtki');

INSERT INTO donation_categories(donation_id, categories_id) VALUES (1,1);
INSERT INTO donation_categories(donation_id, categories_id) VALUES (1,3);
INSERT INTO donation_categories(donation_id, categories_id) VALUES (1,5);

INSERT INTO donation_categories(donation_id, categories_id) VALUES (2,2);
INSERT INTO donation_categories(donation_id, categories_id) VALUES (2,4);
INSERT INTO donation_categories(donation_id, categories_id) VALUES (2,6);

INSERT INTO donation_categories(donation_id, categories_id) VALUES (3,2);