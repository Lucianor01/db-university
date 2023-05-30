1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
    1. SELECT * FROM `students` JOIN `degrees` ON `degrees`.`id` = `students`.`degree_id` WHERE `degrees`.`name` = "Corso di Laurea in Economia";

2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
    2. SELECT * FROM `degrees` JOIN `departments` ON `departments`.`id` = `degrees`.`department_id` WHERE `departments`.`name` = "Dipartimento di Neuroscienze" AND `degrees`.`level` = "magistrale"; 

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
    3. SELECT * FROM `courses` JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id` JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id` WHERE `teachers`.`id` = 44;

4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
    4. SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`, `departments`.`name` FROM `students` JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id` JOIN `departments` ON `degrees`. `department_id` = `departments`.`id` ORDER BY `students`.`surname` ASC;

5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
    5. SELECT `degrees`.`name`, `degrees`.`level`, `degrees`.`address`, `courses`.`name`, `courses`.`description`, `teachers`.`surname`, `teachers`.`name` FROM `degrees` JOIN `courses` ON `degrees`.`id` = `courses`.`degree_id` JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id` JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id` ORDER BY `degrees`.`name` ASC;

6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
    6. SELECT DISTINCT `teachers`.`name` AS `teachers_name` , `teachers`.`surname` AS `teachers_surname`,`departments`.`name` AS `departments_name` FROM `teachers` JOIN `course_teacher` ON `teachers`.`id` = `course_teacher`.`teacher_id` JOIN `courses` ON `course_teacher`.`course_id` = `courses`.`id` JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id` JOIN `departments` ON `degrees`.`department_id`=`departments`.`id` WHERE `departments`.`name`= "Dipartimento di Matematica" ORDER BY `teachers_surname` ASC;

7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente, filtrare i tentativi con voto minimo 18
    7. 
