INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Daniel Souza', 'daniel@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Spring Boot', 'https://img.icons8.com/color/48/000000/spring-logo.png', 'https://img.icons8.com/color/48/000000/spring-logo.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1st Edition', TIMESTAMP WITH TIME ZONE '2024-06-01T03:00:00Z', TIMESTAMP WITH TIME ZONE '2025-06-30T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2nd Edition', TIMESTAMP WITH TIME ZONE '2024-01-01T03:00:00Z', TIMESTAMP WITH TIME ZONE '2025-01-30T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Course Introduction', 'Learn how to get started with Spring Boot', 1, 'https://img.icons8.com/color/48/000000/spring-logo.png', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://img.icons8.com/color/48/000000/spring-logo.png', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas', 3, 'https://img.icons8.com/color/48/000000/spring-logo.png', 0, 1);

INSERT INTO tb_section (title, description, position, image_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'primeiro capitulo', 1, 'https://img.icons8.com/color/48/000000/spring-logo.png', 1, NULL);
INSERT INTO tb_section (title, description, position, image_Uri, resource_id, prerequisite_id) VALUES ('Setup', 'Setup your computer', 2, 'https://img.icons8.com/color/48/000000/spring-logo.png', 1, 1);