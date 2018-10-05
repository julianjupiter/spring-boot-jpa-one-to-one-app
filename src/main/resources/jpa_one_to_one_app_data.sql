INSERT INTO employee (id, last_name, first_name) VALUES
(1, 'Bonifacio', 'Andress'),
(2, 'Rizal', 'Jose'),
(3, 'Aguinaldo', 'Emilio'),
(4, 'Mabini', 'Apolinario');

-- hello = $2a$10$AsrZbNaFaYgzTPdyI8XLlu0HtoHAemYR4tAeNFTRCKe1NR7DWwEQC
INSERT INTO security (employee_id, username, password) VALUES
(1, 'abonifacio', '$2a$10$AsrZbNaFaYgzTPdyI8XLlu0HtoHAemYR4tAeNFTRCKe1NR7DWwEQC'),
(2, 'jrizal', '$2a$10$AsrZbNaFaYgzTPdyI8XLlu0HtoHAemYR4tAeNFTRCKe1NR7DWwEQC'),
(3, 'eaguinaldo', '$2a$10$AsrZbNaFaYgzTPdyI8XLlu0HtoHAemYR4tAeNFTRCKe1NR7DWwEQC'),
(4, 'amabini', '$2a$10$AsrZbNaFaYgzTPdyI8XLlu0HtoHAemYR4tAeNFTRCKe1NR7DWwEQC');