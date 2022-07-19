USE mydb;

/* ============================================================================ */
/* SECTION 1: SELECT statements                                                 */
/* ============================================================================ */

SELECT *
FROM us_state
WHERE name='California'






/* ---- TASK 1 ---------------------------------------------------------------- */
/* Write an SQL statement to find out what is the state capital of Oregon       */
/* hint: the names of the columns you need are: name and capital                */
/* ---------------------------------------------------------------------------- */
SELECT name,capital
FROM us_state
WHERE name="Oregon"






/* ============================================================================ */
/* SECTION 2: SELECT statements with pattern matching and sorting               */
/* ============================================================================ */






/* ---- TASK 2 ---------------------------------------------------------------- */
/* Write an SQL statement to display all the states with abbreviations that     */
/* start with the letter "N", sort your results by state capital                */
/* ---------------------------------------------------------------------------- */

SELECT *
FROM us_state
WHERE name LIKE "N%"
ORDER BY capital




/* ============================================================================ */
/* SECTION 3: INSERT statements                                                 */
/* ============================================================================ */







/* ---- TASK 3 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to insert a new member into the table club_member     */
/* set first_name to "John", last_name to "Doe"                                 */
/* and phone_number to "9998887777"                                             */
/* ---------------------------------------------------------------------------- */
INSERT INTO club_member
SET first_name = "John",
last_name="Doe",
phone_number = "9998887777"






/* ============================================================================ */
/* SECTION 4: DELETE statements                                                 */
/* ============================================================================ */






/* ---- TASK 4 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to delete the row in the table club_member            */
/* if the phone_number is "9998887777"                                          */  
/* ---------------------------------------------------------------------------- */

DELETE FROM club_member
WHERE phone_number="9998887777"








/* ============================================================================ */
/* SECTION 5: Joining tables                                                    */
/* ============================================================================ */

SELECT club_member.member_id,first_name,last_name,description,amount,due_date
FROM club_member,invoice
WHERE club_member.member_id=invoice.member_id







/* ---- TASK 5 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to:                                                   */
/*                                                                              */
/* 1. include these columns in your results:                                    */
/*    first_name, middle_name, last_name, professional_title, tier.description  */
/*                                                                              */
/* 2. your columns will come from the tables club_member and tier               */
/*                                                                              */
/* 3. linking the tier_code column of the table club_member                     */
/*    to the code column of the table tier                                      */                        
/*                                                                              */
/* 4. sort the results by last_name                                             */
/*                                                                              */
/* ---------------------------------------------------------------------------- */
SELECT club_member.member_id,first_name, middle_name, last_name, professional_title, tier_code,description
FROM club_member,invoice
WHERE club_member.member_id=invoice.member_id
ORDER BY last_name










/* ============================================================================ */
/*                                                                              */
/* Congratulations, you have reached the end of the course!!                    */
/*                                                                              */
/* ============================================================================ */

