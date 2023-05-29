Query con SELECT

1. Selezionare tutti gli insegnanti

    1. SELECT * FROM `teachers`;

2. Selezionare tutti i referenti per ogni dipartimento

    2. SELECT * FROM `departments` WHERE `head_of_department`;

3. Selezionare tutti gli studenti il cui nome inizia per "E" (373)

    3. SELECT name FROM `students` WHERE name LIKE 'e%';

4. Selezionare tutti gli studenti che si sono iscritti nel 2021 (734)

    4. SELECT * FROM `students` WHERE YEAR(`enrolment_date`) = 2021;

5. Selezionare tutti i corsi che non hanno un sito web (676)

    5. SELECT * FROM `courses` WHERE `website` is NOT NULL;

6. Selezionare tutti gli insegnanti che hanno un numero di telefono (50)

    6. SELECT * FROM `teachers` WHERE `phone` is NOT NULL;

7. Selezionare tutti gli appelli d'esame dei mesi di giugno e luglio 2020 (2634)

    7. SELECT * FROM `exams` WHERE MONTH(`date`) IN (6, 7) AND YEAR(`date`) = 2020;

8. Qual è il numero totale degli studenti iscritti? (5000)

    8. SELECT COUNT(`name`) AS `total_students` FROM `students`;