-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `numero_di_iscritti`, YEAR (`enrolment_date`) AS `anno_di_iscrizione`
FROM `students` 
GROUP BY YEAR (`enrolment_date`);

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `numero_di_insegnanti`, `office_address` AS `indirizzo_ufficio`
FROM `teachers` 
GROUP BY `indirizzo_ufficio`;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`) AS `media_voti`, `exam_id` 
FROM `exam_student`
GROUP BY `exam_id`;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`,`departments`.`name`, COUNT(`degrees`.`id`) AS `numero_corsi` 
FROM `degrees` 
JOIN `departments` 
ON `departments`.`id` = `degrees`.`department_id`
GROUP BY `department_id`;
