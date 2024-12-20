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
INSERT INTO tb_section (title, description, position, image_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'segundo capitulo', 3, 'https://img.icons8.com/color/48/000000/spring-logo.png', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2024-06-01T03:00:00Z', NULL, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2024-06-01T03:00:00Z', NULL, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 2, TIMESTAMP WITH TIME ZONE '2024-06-01T03:00:00Z', NULL, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson 1', 1, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Content 1', 'https://www.youtube.com/watch?v=3pZ3c7Jf2bE', 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson 2', 2, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Content 2', 'https://www.youtube.com/watch?v=3pZ3c7Jf2bE', 2);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson 3', 3, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Content 3', 'https://www.youtube.com/watch?v=3pZ3c7Jf2bE', 3);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson 4', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Task 1', 5, 3, 10, TIMESTAMP WITH TIME ZONE '2025-02-01T03:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('New Content Available 11', TIMESTAMP WITH TIME ZONE '2024-06-01T03:00:00Z', false, '/offers/1/resources/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('New Content Available 2', TIMESTAMP WITH TIME ZONE '2024-06-01T03:00:00Z', false, '/offers/1/resources/2', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('New Content Available 3', TIMESTAMP WITH TIME ZONE '2024-06-01T03:00:00Z', true, '/offers/1/resources/3', 2);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://www.youtube.com/watch?v=3pZ3c7Jf2bE', TIMESTAMP WITH TIME ZONE '2024-06-01T03:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);