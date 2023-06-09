-- both test users have the password "password"

INSERT INTO users (password, first_name, last_name, phone, email, is_admin)
VALUES ('$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test1',
        'User1',
        '123-456-7890',
        'testuser1@test.com',
        FALSE),
        ('$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test2',
        'User2',
        '123-456-7890',
        'testuser2@test.com',
        FALSE),
       ('$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test',
        'Admin!',
        '123-456-7890',
        'testadmin@test.com',
        TRUE);

INSERT INTO regions (name)
VALUES ('Luzon'),
       ('Visayas'),
       ('Mindanao');

INSERT INTO provinces (name)
VALUES ('Abra'),
       ('Agusan del Norte'),
       ('Agusan del Sur'),
       ('Albay'),
       ('Antique'),
       ('Apayao'),
       ('Aurora'),
       ('Basilan'),
       ('Bataan'),
       ('Batanes'),
       ('Batangas'),
       ('Benguet'),
       ('Biliran'),
       ('Bohol'),
       ('Bukidnon'),
       ('Bulacan'),
       ('Cagayan'),
       ('Camarines Norte'),
       ('Camarines Sur'),
       ('Camiguin'),
       ('Capiz'),
       ('Catanduanes'),
       ('Cavite'),
       ('Cebu'),
       ('Cotabato'),
       ('Davao de Oro'),
       ('Davao del Norte'),
       ('Davao del Sur'),
       ('Davao Occidental'),
       ('Davao Oriental'),
       ('Dinagat Islands'),
       ('Eastern Samar'),
       ('Guimaras'),
       ('Ifugao'),
       ('Ilocos Norte'),
       ('Ilocos Sur'),
       ('Iloilo'),
       ('Isabela'),
       ('Kalinga'),
       ('La Union'),
       ('Laguna'),
       ('Lanao del Norte'),
       ('Lanao del Sur'),
       ('Leyte'),
       ('Maguindanao del Norte'),
       ('Maguindanao del Sur'),
       ('Marinduque'),
       ('Masbate'),
       ('Metro Manila'),
       ('Misamis Occidental'),
       ('Misamis Oriental'),
       ('Mountain Province'),
       ('Negros Occidental'),
       ('Negros Oriental'),
       ('Northern Samar'),
       ('Nueva Ecija'),
       ('Nueva Vizcaya'),
       ('Occidental Mindoro'),
       ('Oriental Mindoro'),
       ('Palawan'),
       ('Pampanga'),
       ('Pangasinan'),
       ('Quezon'),
       ('Quirino'),
       ('Rizal'),
       ('Romblon'),
       ('Samar'),
       ('Sarangani'),
       ('Siquijor'),
       ('Sorsogon'),
       ('South Cotabato'),
       ('Southern Leyte'),
       ('Sultan Kudarat'),
       ('Sulu'),
       ('Surigao del Sur'),
       ('Tarlac'),
       ('Tawi-Tawi'),
       ('Zambales'),
       ('Zamboanga del Norte'),
       ('Zamboanga del Sur'),
       ('Zamboanga del Sibugay');

INSERT INTO primary_addresses (street, barangay, city, province_id, region_id)
VALUES ('999 Southroad St.', 'Jude Luxury Homes', 'Quezon City', 49, 1),
       ('8751 Paseo de Roxas St.', 'None', 'Makati City', 49, 1),
       ('Providence Tower 3000, Unit 2112, Leon Guinto St.', 'Malate', 'Manila', 49, 1),
       ('649 R. Hidalgo Street', 'Barangay 307 Quiapo', 'Manila', 49, 1);

INSERT INTO shipping_addresses (street, barangay, city, province_id, region_id)
VALUES ('999 Southroad St.', 'Jude Luxury Homes', 'Quezon City', 49, 1),
       ('8751 Paseo de Roxas St.', 'None', 'Makati City', 49, 1),
       ('Providence Tower 3000, Unit 2112, Leon Guinto St.', 'Malate', 'Manila', 49, 1),
       ('649 R. Hidalgo Street', 'Barangay 307 Quiapo', 'Manila', 49, 1);

INSERT INTO libraries (admin_id, lib_name, lib_type, program, classrooms, teachers, students_per_grade, primary_address_id, shipping_address_id)
VALUES (1, 'Elementary School Library 1', 'elementary school', 'FSER', 3, 3, 20, 1, 1),
       (2, 'Middle School Library 1', 'middle school', 'FSER', 3, 3, 20, 3, 3),
       (3, 'Community Library 1', 'community', 'LC', null, null, null, 2, 2);

INSERT INTO contacts (first_name, last_name, phone, email, library_id)
VALUES ('Person1', 'Smith', '(344) 882-7360', 'person1@gmail.com', 1),
       ('Person2', 'Johnson', '(546) 705-6760', 'person2@gmail.com', 2),
       ('Person3', 'Brown', '(451) 309-0486', 'person3@gmail.com', 2);

INSERT INTO moas ( moa_status, library_id)
VALUES ('approved', 1),
       ('rejected', 2),
       ('submitted', 3);

INSERT INTO shipments (export_declaration, invoice_num, boxes, date_packed, receipt_date, library_id)
VALUES (123, 321, 1, '08-Jan-2022', '11-Jan-2022', 1),
       (456, 654, 1, '09-Jan-2022', '12-Jan-2022', 2),
       (789, 987, 2, '09-Jan-2022', null, 2);
