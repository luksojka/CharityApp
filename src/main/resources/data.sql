INSERT INTO institution(name, description) VALUES ('Fundacja 1', 'Pomagamy wszystkim');
INSERT INTO institution(name, description) VALUES ('Fundacja 2', 'Misja cel 1');
INSERT INTO institution(name, description) VALUES ('Fundacja 3', 'Misja cel 4');
INSERT INTO institution(name, description) VALUES ('Fundacja 4', 'Misja cel 5');
INSERT INTO institution(name, description) VALUES ('Fundacja piąta', 'Misja cel numer pięć');
INSERT INTO institution(name, description) VALUES ('Fundacja szósta', 'Misja cel numer sześć');

INSERT INTO donation(city, phone, pick_up_comment, pick_up_date, pick_up_time, quantity,street, zip_code, institution_id) VALUES ('Warszawa', '123456789' , 'brak uwag', '2020-10-20' , 17, 2, 'ulica1', 00-001, 1);
INSERT INTO donation(city, phone, pick_up_comment, pick_up_date, pick_up_time, quantity,street, zip_code, institution_id) VALUES ('Poznań','532856293', 'uwaga1', '2020-11-01', 18 ,1, 'ulica2', 01-029,1);
INSERT INTO donation(city, phone, pick_up_comment, pick_up_date, pick_up_time, quantity,street, zip_code, institution_id) VALUES ('Piaseczno', '918374823', 'uwaga2', '2020-11-10', 19, 3, 'ulica3', 03-999,4);

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

INSERT INTO role (name) VALUES ('ROLE_ADMIN');
INSERT INTO role (name) VALUES ('ROLE_USER');

INSERT INTO user (username, enabled, password) VALUES ('admin@admin.com', 1, '$2a$10$H6U4JPbFQkY1lQRQcX1yI.JEW.NhRZKTACjomcuxZ01gE7Bu2jREW');

INSERT INTO user_roles (user_id, roles_id) VALUES (1, 1);