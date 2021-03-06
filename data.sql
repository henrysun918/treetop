README                                                                                              0100664 0015412 0015412 00000005273 12111773147 012214  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               To setup:

1. Make sure evenstar_db aldreay exists in your database
2. To create database schema, run schema.sql, the previous schema will be overwritten
3. To load test data, run data.sql, make sure you have already created the schema, the previous data will be overwritten
4. Put all files in ./treetop to a php server accessible directory, for this homework, the files already exist in ~/public_html/treetop/ 

To run:

1. Make sure you have enabled cookie and javascript in your browser.
2. Visit http://www.cs.dartmouth.edu/~evenstar/treetop/ (replace it with your diretory. For this homework, you may test the application from my home directory directly, in real life, but can deploy them anywhere you want, I use relative addresses all the time)

About the database:

1. The smallest available seat number is assigned to each new reservation. When some customer cancels his reservation, the seat becomes becomes available for reservation.

2. Distinguish between flights and schedule. Schedule is where you look up possible routes and operation days. Flights is where you check whether a scheduled flight is actually happening, what status it has, and make a reservation on it.

3. Clicking on "reserve" on the Flight page will send you to reservation page, but you have to "execute" to make a reservation actually happen

4. Non-empty input fields are not enforced. If a user follows his intuition, he will natually find desired results. However, the system won't crash even if a user operates abnormally. For instance, it is intuitive to search all flights on 2013-2-21 while leaving departure and arrival city blank--the system handles this correctly. It is not intuitive to pull a passenger list without specifying the date--the system will simply return nothing without reporting an error.

5. Since this is a database course, I kept the visual design minimal and focused on the correctness and functionality of data manipulation. Don't be disappointed if you don't see a fancy colorful UI.

6. The application works differently for 4 types of users: 1) anonymous 2)passenger 3)pure employee 4) employee travels as passenger. They are allowed the following operations:
1) Anonymous: login, check sechedule
2) Passenger: 1) + logout, check flights, manage reservations
3) Pure employee: 1) + logout, check passenger lists, check flight statistics
4) Employee travels as passenger: 2) + 3)

7. The application doesn't distinguish between "past flights" and "future reservations". They are both displayed as reservations. A past flight has a status "arrived", "departured", or "canceled". A future reservation has a status "on time", "delayed", or "canceled". A customer can also check the date to see if a flight is "past" or "future". 
                                                                                                                                                                                                                                                                                                                                     README~                                                                                             0100664 0015412 0015412 00000005217 12111773020 012376  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               To setup:

1. Make sure evenstar_db aldreay exists in your database
2. To create database schema, run schema.sql, the previous schema will be overwritten
3. To load test data, run data.sql, make sure you have already created the schema, the previous data will be overwritten
4. Put all files in ./treetop to a php server accessible directory, for this homework, the files already exist in ~/public_html/treetop/ 

To run:

1. Make sure you have enabled cookie and javascript in your browser.
2. Visit http://www.cs.dartmouth.edu/~evenstar/treetop/ (for this homework, you test the application from my home directory, in real life, you can deploy them anywhere you want, I use relative addresses all the time)

About the database:

1. The smallest available seat number is assigned to each new reservation. When some customer cancels his reservation, the seat becomes becomes available for reservation.

2. Distinguish between flights and schedule. Schedule is where you look up possible routes and operation days. Flights is where you check whether a scheduled flight is actually happening, what status it has, and make a reservation on it.

3. Clicking on "reserve" on the Flight page will send you to reservation page, but you have to "execute" to make a reservation actually happen

4. Non-empty input fields are not enforced. If a user follows his intuition, he will natually find desired results. However, the system won't crash even if a user operates abnormally. For instance, it is intuitive to search all flights on 2013-2-21 while leaving departure and arrival city blank--the system handles this correctly. It is not intuitive to pull a passenger list without specifying the date--the system will simply return nothing without reporting an error.

5. Since this is a database course, I kept the visual design minimal and focused on the correctness and functionality of data manipulation. Don't be disappointed if you don't see a fancy colorful UI.

6. The application works differently for 4 types of users: 1) anonymous 2)passenger 3)pure employee 4) employee travels as passenger. They are allowed the following operations:
1) Anonymous: login, check sechedule
2) Passenger: 1) + logout, check flights, manage reservations
3) Pure employee: 1) + logout, check passenger lists, check flight statistics
4) Employee travels as passenger: 2) + 3)

7. The application doesn't distinguish between "past flights" and "future reservations". They are both displayed as reservations. A past flight has a status "arrived", "departured", or "canceled". A future reservation has a status "on time", "delayed", or "canceled". A customer can also check the date to see if a flight is "past" or "future". 
                                                                                                                                                                                                                                                                                                                                                                                 README.TESTING                                                                                      0100664 0015412 0015412 00000011212 12111771475 013320  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               Follow this guide to test the treetop database.
Make sure you don't skip any steps. Some later steps may depend on the results of previous steps.

Preparation:
	1. open a browser, enable cookie and javascript, visit: http://www.cs.dartmouth.edu/~evenstar/treetop/

As anonymous user:
	2. click on schedule, the whole schedule is displayed.
	3. put "Norwood" in the "From City" field, click on search, all scheduled flights from Norwood are be displayed. Note that TP1011 takes passenger from Norwood back to Norwood. It is a special program in which a Boeing 777 takes passengers to the stratosphere and offers weightlessness experience.
	4. add "Wonju" to "To City" field, click on search again, all scheduled flights from Norwood to Wonju are displayed.
	5. remove "Norwood" in the "From City" field, click on search, all scheduled flights to Wonju are displayed. 
	6. click on login, username and password fileds are displayed. This concludes the testing as anonymous user.

As passenger:
	7. put "customer" in "username" filed, put "testpassword" in "password" field, click on Log In, a navigation bar with "logout(customer)" links indicates a login success.
	8. test "schedule" as described in steps 2-5 
	9. click on flight, all flights in the near future are displayed.
	10. put "Norwood" in the "From City" field, click on search, all flights from Norwood are displayed, sorted by date in ascending order.
	11. choose different "sorting" and "order by" criteria, click on search to see results properly sorted.
	12. add "Wonju" to "To City" field, click on search, all flights from Norwood to Wonju are displayed.
	13. add "2012-11-23" to "YYYY-MM-DD" filed, flight(s) from Norwood to Wonju on 2012-11-23 are displayed.
	14. click on reserve, you are redirected to reservation page where all reservations are displayed sorted by flight date in descending order.
	15. Notice that a reservation form is filled out for you, click on execute, the flight shows up in the table
	16. Execute again, you get a warning saying you have already reserved the flight.
	17. Choose "cancel" in the form, click on execute, the flight disappears from the table
	18. Execute again, you get a warning saying you are not on that flight.
	19. Choose "Reserve", execute again, we need this for later tests. 
	20. Click on "logout(customer)", this concludes testing as passenger.

As pure employee
	21. login with "pureemployee" as username, and "testpassword" as password.
	22. test "schedule" as described in steps 2-5 
	23. Click on passenger, put "TP1001" and "2012-11-21" in the fileds, click on show, a list of all passengers on TP1001 on 2012-11-21 is displayed.
	24. Remove flight date and click on show, an empty tabled is returned, as expected.
	25. Click on statistics, put "2012-11-20" and "2012-11-26" in "From" and "To" fileds, click on show. The 5 most popular flights are displayed
	26. Change From date to "2012-11-23", click on show, different results are displayed
	26. Remove the date from the second filed, show again, empty table is returned, as expected.
	27. Click on "logout(pureemployee)", this concludes testing as a pure employee.

As an employee traveling as passenger
	28. login with "employee" as username, and "testpassword" as password.
	29. test "schedule" as described in steps 2-5
	30. test "flight", "reservation" as described in steps 9-19, notice that you are assigned seat #2 when reserving flight TP1002, which is next to the seat number assigned to "customer".
	31. test "passenger", "statistics" as decribed in steps 23-26
	32. click on "logout(employee)", this concludes testing as employee traveling as passenger.

Other cases:
	33. click on login, click on Log In button without putting username and password, you get a warning saying you must enter username and password. Use "badusername" as username and "badpassword" as password, click on Log In, you get an "invalid username or password" error
	34. login as "customer" again with "testpassword" as password.
	35. click on reservation, put "TP1002", "2012-11-23" in the text fields, choose Cancel, and click on Execute. Seat #1 on TP1002 should be freed up.
	36. logout and login as "employee", with "testpassword" as password.
	37. click on reservation, put "TP1002", "2012-11-23" in the text fields, choose Cancel, and click on Execute. Seat #2 on TP1002 should be freed up.
	38. Switch to "Reserve" and execute again, this time you get seat #1, which is from "customer"'s cancelation.
	39. Now test an injection attack, go to schedule, put "' OR dep_city='Norwood" (exclude double quotes) in the From City, click on Search, nothing is returned. (Without sanitaion, flights from Norwood will be displayed)
	40. Click on logout, This concludes the whole test.
                                                                                                                                                                                                                                                                                                                                                                                      schema.sql                                                                                          0100664 0015412 0015412 00000036231 12111524427 013306  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

USE `evenstar_db` ;

-- -----------------------------------------------------
-- Table `evenstar_db`.`airport`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `evenstar_db`.`airport` ;

CREATE  TABLE IF NOT EXISTS `evenstar_db`.`airport` (
  `code` CHAR(3) NOT NULL ,
  `city` VARCHAR(45) NOT NULL ,
  `nation` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`code`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `evenstar_db`.`flight_schedule`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `evenstar_db`.`flight_schedule` ;

CREATE  TABLE IF NOT EXISTS `evenstar_db`.`flight_schedule` (
  `flight_number` VARCHAR(20) NOT NULL ,
  `from` CHAR(3) NOT NULL ,
  `to` CHAR(3) NOT NULL ,
  `dep_time` TIME NOT NULL ,
  `arr_time` TIME NOT NULL ,
  `aircraft` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`flight_number`) ,
  CONSTRAINT `used by`
    FOREIGN KEY (`from`)
    REFERENCES `evenstar_db`.`airport` (`code`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (`to`)
    REFERENCES `evenstar_db`.`airport` (`code`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE INDEX `flight_schedule_airport_idx` ON `evenstar_db`.`flight_schedule` (`from` ASC, `to` ASC) ;


-- -----------------------------------------------------
-- Table `evenstar_db`.`flight_weekday`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `evenstar_db`.`flight_weekday` ;

CREATE  TABLE IF NOT EXISTS `evenstar_db`.`flight_weekday` (
  `flight_number` VARCHAR(20) NOT NULL ,
  `weekday` ENUM('1','2','3','4','5','6','7') NOT NULL ,
  PRIMARY KEY (`flight_number`, `weekday`) ,
  CONSTRAINT `operates on`
    FOREIGN KEY (`flight_number` )
    REFERENCES `evenstar_db`.`flight_schedule` (`flight_number` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `evenstar_db`.`flight`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `evenstar_db`.`flight` ;

CREATE  TABLE IF NOT EXISTS `evenstar_db`.`flight` (
  `flight_number` VARCHAR(20) NOT NULL ,
  `date` DATE NOT NULL ,
  `status` ENUM('unknown', 'on time', 'delayed', 'canceled', 'departed', 'arrived') NOT NULL DEFAULT 'unknown' ,
  `capacity` INT NOT NULL ,
  `passenger_count` INT NOT NULL DEFAULT 0 ,
  `actual_dep_time` TIME NULL ,
  `actual_arr_time` TIME NULL ,
  PRIMARY KEY (`flight_number`, `date`) ,
  CONSTRAINT `scheduled as`
    FOREIGN KEY (`flight_number` )
    REFERENCES `evenstar_db`.`flight_schedule` (`flight_number` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `evenstar_db`.`passenger`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `evenstar_db`.`passenger` ;

CREATE  TABLE IF NOT EXISTS `evenstar_db`.`passenger` (
  `id` VARCHAR(40) NOT NULL ,
  `name` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `evenstar_db`.`reservation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `evenstar_db`.`reservation` ;

CREATE  TABLE IF NOT EXISTS `evenstar_db`.`reservation` (
  `passenger_id` VARCHAR(40) NOT NULL ,
  `flight_number` VARCHAR(20) NOT NULL ,
  `flight_date` DATE NOT NULL ,
  `seat_number` INT NULL ,
  PRIMARY KEY (`passenger_id`, `flight_date`, `flight_number`) ,
  CONSTRAINT `makes`
    FOREIGN KEY (`passenger_id` )
    REFERENCES `evenstar_db`.`passenger` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `on`
    FOREIGN KEY (`flight_number` , `flight_date` )
    REFERENCES `evenstar_db`.`flight` (`flight_number` , `date` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `makes_idx` ON `evenstar_db`.`reservation` (`passenger_id` ASC) ;

CREATE INDEX `on_idx` ON `evenstar_db`.`reservation` (`flight_number` ASC, `flight_date` ASC) ;


-- -----------------------------------------------------
-- Table `evenstar_db`.`account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `evenstar_db`.`account` ;

CREATE  TABLE IF NOT EXISTS `evenstar_db`.`account` (
  `user_id` VARCHAR(45) NOT NULL ,
  `username` VARCHAR(40) NOT NULL ,
  `password` CHAR(40) NOT NULL ,
  `passenger_id` VARCHAR(45) NULL ,
  `account_type` ENUM('employee','customer') NOT NULL ,
  PRIMARY KEY (`user_id`) ,
  CONSTRAINT `flys as`
    FOREIGN KEY (`passenger_id` )
    REFERENCES `evenstar_db`.`passenger` (`id` )
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `username_UNIQUE` ON `evenstar_db`.`account` (`username` ASC) ;

CREATE INDEX `flys as_idx` ON `evenstar_db`.`account` (`passenger_id` ASC) ;

USE `evenstar_db` ;

-- -----------------------------------------------------
-- Placeholder table for view `evenstar_db`.`flight_customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `evenstar_db`.`flight_customer` (`flight_number` INT, `date` INT, `dep_city` INT, `arr_city` INT, `status` INT, `available_seat` INT, `dep_time` INT, `arr_time` INT, `aircraft` INT);

-- -----------------------------------------------------
-- Placeholder table for view `evenstar_db`.`flight_schedule_human`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `evenstar_db`.`flight_schedule_human` (`flight_number` INT, `dep_airport` INT, `dep_city` INT, `arr_airport` INT, `arr_city` INT, `weekday` INT, `dep_time` INT, `arr_time` INT, `aircraft` INT);

-- -----------------------------------------------------
-- Placeholder table for view `evenstar_db`.`reservation_customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `evenstar_db`.`reservation_customer` (`passenger_id` INT, `flight_number` INT, `flight_date` INT, `dep_city` INT, `arr_city` INT, `status` INT, `dep_time` INT, `seat_number` INT, `aircraft` INT);

-- -----------------------------------------------------
-- function get_available_seat
-- -----------------------------------------------------

USE `evenstar_db`;
DROP function IF EXISTS `evenstar_db`.`get_available_seat`;

DELIMITER $$
USE `evenstar_db`$$
-- Return
--   0 can't be reserved
--   -1 Full
--   >0 A good seat #

CREATE FUNCTION `evenstar_db`.`get_available_seat`
(
	chosen_flight_number  VARCHAR(20),
	chosen_flight_date	   DATE	
)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE chosen_status ENUM('unknown', 'on time', 'delayed', 'canceled', 'departed', 'arrived');
	DECLARE chosen_capacity	INT;
	DECLARE chosen_passenger_count INT;
	DECLARE current_seat INT DEFAULT 0;

	

	SELECT status, capacity, passenger_count INTO chosen_status, chosen_capacity, chosen_passenger_count
	FROM flight
	WHERE flight.flight_number = chosen_flight_number AND flight.date = chosen_flight_date;
	
	-- first check if flight is bookable
	IF chosen_status = 'canceled' OR chosen_status = 'departed' OR chosen_status = 'arrived'
	THEN RETURN 0;
	END IF;
	
	-- check if flight is full
	IF chosen_passenger_count = chosen_capacity
	THEN RETURN -1;
	END IF;

	-- then return available seat
	WHILE current_seat < chosen_capacity DO
		SET current_seat = current_seat + 1;
		IF NOT EXISTS (SELECT seat_number
		FROM reservation	
		WHERE reservation.seat_number = current_seat AND reservation.flight_number = chosen_flight_number AND reservation.flight_date = chosen_flight_date)
		 THEN
			RETURN (current_seat);
		END IF;
	END WHILE;
	
	RETURN 0;
	
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function make_reservation
-- -----------------------------------------------------

USE `evenstar_db`;
DROP function IF EXISTS `evenstar_db`.`make_reservation`;

DELIMITER $$
USE `evenstar_db`$$
-- Return
--   3 Already reserved
--   2 Not reservable
--   1 Full
--   0 Success

CREATE FUNCTION `make_reservation`(
	chosen_passenger_id		  VARCHAR(40),
	chosen_flight_number  VARCHAR(20),
	chosen_flight_date	  DATE	
) RETURNS INT
    READS SQL DATA
BEGIN
	DECLARE chosen_seat_number INT;
	-- check if passenger is on this flight
	IF EXISTS (SELECT passenger_id
		FROM reservation	
		WHERE reservation.flight_number = chosen_flight_number 
		AND reservation.flight_date = chosen_flight_date
		AND reservation.passenger_id = chosen_passenger_id)
	THEN
		RETURN 3;
	END IF;
	SET chosen_seat_number = get_available_seat(chosen_flight_number, chosen_flight_date);
	IF chosen_seat_number > 0 THEN
		INSERT INTO reservation VALUES(chosen_passenger_id, chosen_flight_number, chosen_flight_date, chosen_seat_number);
		RETURN 0;
	END IF;
	RETURN chosen_seat_number + 2;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function cancel_reservation
-- -----------------------------------------------------

USE `evenstar_db`;
DROP function IF EXISTS `evenstar_db`.`cancel_reservation`;

DELIMITER $$
USE `evenstar_db`$$
-- Return
--  0 success
--  1 not on this flight
--  2 flight is not cancelable

CREATE FUNCTION `evenstar_db`.`cancel_reservation`
(
	chosen_passenger_id		  VARCHAR(40),
	chosen_flight_number  VARCHAR(20),
	chosen_flight_date	  DATE	
) RETURNS INT
    READS SQL DATA
BEGIN
	DECLARE chosen_status ENUM('unknown', 'on time', 'delayed', 'canceled', 'departed', 'arrived');

	SELECT status INTO chosen_status
	FROM flight
	WHERE flight.flight_number = chosen_flight_number AND flight.date = chosen_flight_date;

	-- first check if flight is cancelable
	IF chosen_status = 'departed' OR chosen_status = 'arrived'
	THEN RETURN 2;
	END IF;

	-- check if passenger is on this flight
	IF NOT EXISTS (SELECT passenger_id
		FROM reservation	
		WHERE reservation.flight_number = chosen_flight_number 
		AND reservation.flight_date = chosen_flight_date
		AND reservation.passenger_id = chosen_passenger_id)
		 THEN
			RETURN 1;
	END IF;

	-- then cancel the flight
	DELETE FROM reservation WHERE 
	(passenger_id = chosen_passenger_id AND
	flight_number = chosen_flight_number AND
	flight_date = chosen_flight_date);
	RETURN 0;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure get_passenger_list
-- -----------------------------------------------------

USE `evenstar_db`;
DROP procedure IF EXISTS `evenstar_db`.`get_passenger_list`;

DELIMITER $$
USE `evenstar_db`$$
-- Get a list of passengers on a given flight

CREATE PROCEDURE `evenstar_db`.`get_passenger_list` (
	IN  chosen_flight_number VARCHAR(20),
	IN  chosen_flight_date DATE
)
BEGIN
SELECT seat_number, id, name FROM reservation AS R 
INNER JOIN passenger AS P 
ON R.passenger_id = P.id 
WHERE flight_number = chosen_flight_number
AND flight_date = chosen_flight_date
ORDER BY seat_number;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure get_popular_flight
-- -----------------------------------------------------

USE `evenstar_db`;
DROP procedure IF EXISTS `evenstar_db`.`get_popular_flight`;

DELIMITER $$
USE `evenstar_db`$$
-- Get 5 most popular flights, measured by number of reservations
-- in a given range of time 

CREATE PROCEDURE `evenstar_db`.`get_popular_flight` (
	IN begin_date DATE,
	IN end_date DATE
)
BEGIN
	SELECT F.flight_number, 
	C.dep_city, 
	C.arr_city,
	SUM(passenger_count) as total_passenger 
	FROM flight AS F
	JOIN flight_customer AS C
	ON F.flight_number = C.flight_number
	AND F.date = C.date
	WHERE F.date>=begin_date 
	AND F.date<=end_date 
	GROUP BY F.flight_number 
	ORDER BY total_passenger 
	DESC 
	LIMIT 5;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `evenstar_db`.`flight_customer`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `evenstar_db`.`flight_customer` ;
DROP TABLE IF EXISTS `evenstar_db`.`flight_customer`;
USE `evenstar_db`;
CREATE  OR REPLACE VIEW `evenstar_db`.`flight_customer` AS
SELECT t1.flight_number, 
f.date,
b1.city AS dep_city,  
b2.city AS arr_city, 
f.status,
(f.capacity-f.passenger_count) as available_seat,
t1.dep_time,
t1.arr_time,
t1.aircraft 
FROM (flight_schedule AS t1 JOIN airport as b1 ON t1.from = b1.code)
INNER JOIN (flight_schedule AS t2 JOIN airport AS b2 ON t2.to = b2.code) 
ON t1.flight_number = t2.flight_number
INNER JOIN flight AS f on t1.flight_number = f.flight_number;

-- -----------------------------------------------------
-- View `evenstar_db`.`flight_schedule_human`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `evenstar_db`.`flight_schedule_human` ;
DROP TABLE IF EXISTS `evenstar_db`.`flight_schedule_human`;
USE `evenstar_db`;
CREATE  OR REPLACE VIEW `evenstar_db`.`flight_schedule_human` AS
SELECT t1.flight_number, 
t1.from AS dep_airport,
b1.city AS dep_city, 
t1.to AS arr_airport, 
b2.city AS arr_city, 
w.weekday,
t1.dep_time, t1.arr_time, 
t1.aircraft 
FROM (flight_schedule t1 JOIN airport as b1 ON t1.from = b1.code)
INNER JOIN (flight_schedule AS t2 JOIN airport AS b2 ON t2.to = b2.code) 
ON t1.flight_number = t2.flight_number
INNER JOIN flight_weekday AS w ON t1.flight_number = w.flight_number;

-- -----------------------------------------------------
-- View `evenstar_db`.`reservation_customer`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `evenstar_db`.`reservation_customer` ;
DROP TABLE IF EXISTS `evenstar_db`.`reservation_customer`;
USE `evenstar_db`;
CREATE  OR REPLACE VIEW `evenstar_db`.`reservation_customer` AS
SELECT passenger_id, F.flight_number, flight_date, dep_city, arr_city, status, dep_time, seat_number, aircraft 
FROM reservation AS R 
JOIN flight_customer AS F 
ON R.flight_number = F.flight_number 
AND R.flight_date = F.date
ORDER BY flight_date
DESC;
USE `evenstar_db`;

DELIMITER $$

USE `evenstar_db`$$
DROP TRIGGER IF EXISTS `evenstar_db`.`reservation_BINS` $$
USE `evenstar_db`$$


CREATE TRIGGER `reservation_BINS` BEFORE INSERT ON reservation FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	UPDATE flight
	SET passenger_count = passenger_count + 1
	WHERE flight.flight_number = NEW.flight_number AND flight.date = NEW.flight_date;
END
$$


USE `evenstar_db`$$
DROP TRIGGER IF EXISTS `evenstar_db`.`reservation_BDEL` $$
USE `evenstar_db`$$


CREATE TRIGGER `reservation_BDEL` BEFORE DELETE ON reservation FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	UPDATE flight
	SET passenger_count = passenger_count - 1
	WHERE flight.flight_number = OLD.flight_number AND flight.date = OLD.flight_date;
END

$$


USE `evenstar_db`$$
DROP TRIGGER IF EXISTS `evenstar_db`.`reservation_BUPD` $$
USE `evenstar_db`$$


CREATE TRIGGER `reservation_BUPD` BEFORE UPDATE ON reservation FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
	UPDATE flight
	SET passenger_count = passenger_count - 1
	WHERE flight.flight_number = OLD.flight_number AND flight.date = OLD.flight_date;
	UPDATE flight
	SET passenger_count = passenger_count + 1
	WHERE flight.flight_number = NEW.flight_number AND flight.date = NEW.flight_date;
END
$$


DELIMITER ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

                                                                                                                                                                                                                                                                                                                                                                       treetop/                                                                                            0040755 0015412 0015412 00000000000 12111771475 013012  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/closedb.php~                                                                                0100644 0015412 0015412 00000000474 12111507214 015322  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Home';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');
?>


<?php
	//show something here for the home page, if necessary.
?>

<?php

	//insert footer
	require_once('footer.php');
?>

                                                                                                                                                                                                    treetop/closedb.php                                                                                 0100644 0015412 0015412 00000000062 12111764635 015131  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php	  
	if($dbc){
		mysqli_close ($dbc);
	}
?>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                              treetop/navmenu.php                                                                                 0100644 0015412 0015412 00000001523 12111511126 015153  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php

	//generating navigation bar according to the type of user and whether an associated passenger_id exists

	//show this to everyone
	echo '<hr />';
	echo '<a href="schedule.php">schedule</a>';
	if(isset($_SESSION['username'])){
		//to logged in passengers
		if($_SESSION['passenger_id']){
			echo ' | ';
			echo '<a href="flight.php">flight</a>';
			echo ' | ';
			echo '<a href="reservation.php">reservation</a>';
		}
		//to logged in employees
		if($_SESSION['account_type']=='employee'){
			echo ' | ';
			echo '<a href="passenger.php">passenger</a>';
			echo ' | ';
			echo '<a href="stats.php">statistics</a>';
		}
		//to everyone logged in
		echo ' | ';
		echo '<a href="logout.php">logout('.$_SESSION['username'].')</a>';
	}
	//to everyone not logged in
	else{
		echo ' | ';
		echo '<a href="login.php">login</a>';
	}
	echo '<hr />';
?>

                                                                                                                                                                             treetop/navmenu.php~                                                                                0100644 0015412 0015412 00000001313 12111506006 015347  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php

	//generating navigation bar according to the type of user and whether an associated passenger_id exists
	echo '<hr />';
	echo '<a href="schedule.php">schedule</a>';
	if(isset($_SESSION['username'])){
		if($_SESSION['passenger_id']){
			echo ' | ';
			echo '<a href="flight.php">flight</a>';
			echo ' | ';
			echo '<a href="reservation.php">reservation</a>';
		}
		if($_SESSION['account_type']=='employee'){
			echo ' | ';
			echo '<a href="passenger.php">passenger</a>';
			echo ' | ';
			echo '<a href="stats.php">statistics</a>';
		}
		echo ' | ';
		echo '<a href="logout.php">logout('.$_SESSION['username'].')</a>';
	}
	else{
		echo ' | ';
		echo '<a href="login.php">login</a>';
	}
	echo '<hr />';
?>

                                                                                                                                                                                                                                                                                                                     treetop/stats.php~                                                                                  0100644 0015412 0015412 00000004345 12111765017 015055  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Home';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');

	require_once('connectvars.php');

	$error_msg="";
?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Top 5</legend>
		From
		<input type="text" name="begin_date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['begin_date'])) echo $_POST['begin_date']; ?>" />
		To
		<input type="text" name="end_date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['end_date'])) echo $_POST['end_date']; ?>" />
	</fieldset>
	<input type="submit" value="Show" name="submit" />
</form>
	

<?php

	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{

		//check if logged in
		if ($_SESSION['account_type']!='employee'){
			$error_msg= 'Sorry, you are not authorized.';
		}else if(!empty($_POST['submit'])){
			//sanitizer
			$_POST['begin_date']=mysqli_real_escape_string($dbc, trim($_POST['begin_date']));
			$_POST['end_date']=mysqli_real_escape_string($dbc, trim($_POST['end_date']));

			//display all reservations
			$query="CALL get_popular_flight('".$_POST['begin_date']."','".$_POST['end_date']."')";
			$data=mysqli_query($dbc, $query);
			if(!$data){
				mysqli_close ($dbc);
				$error_msg='Error retrieving stats';
			}else{
				//print all reservations
				echo '<table border="1">';
				echo '<tr><th>Flight Number</th><th>From</th><th>To</th><th>Total Traffic</th></tr>';
				while($row = mysqli_fetch_array($data)){
					echo '<tr>';
					echo '<td>';
					echo $row['flight_number'];
					echo '</td>';
					echo '<td>';
					echo $row['dep_city'];
					echo '</td>';
					echo '<td>';
					echo $row['arr_city'];
					echo '</td>';
					echo '<td>';
					echo $row['total_passenger'];
					echo '</td>';
					echo '</tr>';
				}	
				echo '</table>';
			}
		}
	}
?>

<?php
	if (!empty($error_msg)){
		echo '<script type="text/javascript">';
		echo 'alert("'.$error_msg.'")';
		echo '</script>';  
	}
?>

<?php
	//close db
	require_once('closedb.php');

	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

                                                                                                                                                                                                                                                                                           treetop/passenger.php~                                                                              0100644 0015412 0015412 00000003770 12111764704 015711  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Passenger';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');

	require_once('connectvars.php');
	$error_msg="";
?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Passenger List</legend>
		<input type="text" name="flight_number" placeholder="Flight Number" value="<?php if (!empty($_POST['flight_number'])) echo $_POST['flight_number']; ?>" />
		<input type="text" name="date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['date'])) echo $_POST['date']; ?>" />
	</fieldset>
	<input type="submit" value="Show" name="submit" />
</form>
	

<?php

	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{

		//check if logged in with proper account_type
		if ($_SESSION['account_type']!='employee'){
			$error_msg= 'Sorry, you are not authorized.';
		}else if (!empty($_POST['submit'])){
			//sanitizer
			$_POST['flight_number']=mysqli_real_escape_string($dbc, trim($_POST['flight_number']));
			$_POST['date']=mysqli_real_escape_string($dbc, trim($_POST['date']));

			//display passenger list
			$query="CALL get_passenger_list('".$_POST['flight_number']."','".$_POST['date']."')";
			$data=mysqli_query($dbc, $query);
			if(!$data){
				mysqli_close ($dbc);
				$error_msg='Error retrieving passenger info';
			}else{
				//print all reservations
				echo '<table border="1">';
				echo '<tr><th>Seat Number</th><th>Passenger ID</th><th>Passenger Name</th></tr>';
				while($row = mysqli_fetch_array($data)){
					echo '<tr>';
					echo '<td>';
					echo $row['seat_number'];
					echo '</td>';
					echo '<td>';
					echo $row['id'];
					echo '</td>';
					echo '<td>';
					echo $row['name'];
					echo '</td>';
					echo '</tr>';
				}	
				echo '</table>';
			}
		}
	}
?>

<?php
	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

        treetop/connectvars.php~                                                                            0100644 0015412 0015412 00000000307 12111765070 016235  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php	
	
	//Define Database Variables
	//define('DB_HOST', 'sunapee.cs.dartmouth.edu');
	define('DB_USER', 'evenstar');
	define('DB_PASSWORD', 'testpassword');
	define('DB_NAME', 'evenstar_db');

?>
                                                                                                                                                                                                                                                                                                                         treetop/error.php                                                                                   0100644 0015412 0015412 00000000210 12111760730 014632  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	if (!empty($error_msg)){
		echo '<script type="text/javascript">';
		echo 'alert("'.$error_msg.'")';
		echo '</script>';  
	}
?>
                                                                                                                                                                                                                                                                                                                                                                                        treetop/sanitizer.php~                                                                              0100644 0015412 0015412 00000000175 12111513634 015720  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	//sanitize
	foreach($_REQUEST as $key => $val){
		$_REQUEST[$key] = mysql_real_escape_string($dbc, trim($val));
	}
?>
                                                                                                                                                                                                                                                                                                                                                                                                   treetop/header.php                                                                                  0100644 0015412 0015412 00000000760 12110064335 014740  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<?php
	echo '<title>Treetop - ' . $page_title . '</title>';
?>
	<!--future stylesheet
	<link rel="stylesheet" type="text/css" href="style.css" />
	-->
</head>

<body>

<?php
	echo '<h3>Treetop - ' . $page_title . '</h3>';
?>

                treetop/login.php~                                                                                  0100644 0015412 0015412 00000005147 12111764760 015034  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	
	//mysql global variables
	require_once('connectvars.php');

	//start session
	require_once('startsession.php');
	
	//Clear error message
	$error_msg="";

	//Insert header
	$page_title='Login';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');
?>

<?php

	//if not logged in
	if (!isset($_SESSION['u_id'])){
		if (isset($_POST['submit'])){

			//connect to database
			$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
			if(!$dbc){
				$error_msg='Error connecting to MySQL Database';
			}else{
				//sanitizer
				$_POST['username']=mysqli_real_escape_string($dbc, $_POST['username']);
				$_POST['password']=mysqli_real_escape_string($dbc, $_POST['password']);

	
				//extract data from the form
				$username=$_POST['username'];
				$password=$_POST['password'];

				if (!empty($username) && !empty($password)){
					$query="SELECT user_id, username, account_type, passenger_id FROM account WHERE username='$username' AND password=SHA('$password')";
					$data=mysqli_query($dbc, $query);
					if(!$data){
						mysqli_close ($dbc);
						$error_msg='Error login';
					}else{

						if (mysqli_num_rows($data)==1) {
							$row=mysqli_fetch_array($data);
							$_SESSION['user_id'] = $row['user_id']; 
							$_SESSION['username'] = $row['username'];
							$_SESSION['account_type'] = $row['account_type'];

							if (!empty($row['passenger_id'])) {
								$_SESSION['passenger_id'] = $row['passenger_id'];
							}

							setcookie('user_id', $row['user_id'], time() + (60*60*24*1)); //24 hours
							setcookie('username', $row['username'], time() + (60*60*24*1));
							if (!empty($row['passenger_id'])) {
								setcookie('passenger_id', $row['passenger_id'], time() + (60*60*24*1));
							}
							setcookie('account_type', $row['account_type'], time() + (60*60*24*1));

							//redirect to home page
							$home_url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']) . '/index.php';
							header('Location: ' . $home_url);
					
						}
						else{
						$error_msg= 'invalid username or password.';
						}
					}
				}
				else{
					$error_msg='must enter username and passowrd.';
				}
			}
		}
	}

?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Log In</legend>
		<input type="text" name="username" placeholder="username" /></br>
		<input type="password" name="password" placeholder="password"/>
	</fieldset>
	<input type="submit" value="Log In" name="submit" />
</form>

<?php
	//close db
	require_once('closedb.php');
	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>


                                                                                                                                                                                                                                                                                                                                                                                                                         treetop/flight.php~                                                                                 0100644 0015412 0015412 00000010665 12111764716 015203  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php

	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Flight';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');

?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Search Flight</legend>
		<input type="text" name="dep_city" placeholder="From City" value="<?php if (!empty($_POST['dep_city'])) echo $_POST['dep_city']; ?>" />
		<input type="text" name="arr_city" placeholder="To City" value="<?php if (!empty($_POST['arr_city'])) echo $_POST['arr_city']; ?>" />
		<input type="text" name="date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['date'])) echo $_POST['date']; ?>" /></br>
		sort by 
		<input type="radio" name="sort" value="date" <?php if($_POST['sort']==date || empty($_POST['sort'])) echo 'checked="yes"'; ?>>Date
		<input type="radio" name="sort" value="flight_number" <?php if($_POST['sort']==flight_number) echo 'checked="yes"'; ?>>Flight Number
		<input type="radio" name="sort" value="dep_time" <?php if($_POST['sort']==dep_time) echo 'checked="yes"'; ?>>Departure Time
		<input type="radio" name="sort" value="arr_time" <?php if($_POST['sort']==arr_time) echo 'checked="yes"'; ?>>Arrival Time</br>
		order 
		<input type="radio" name="order" value="asc" <?php if($_POST['order']==asc || empty($_POST['order'])) echo 'checked="yes"'; ?>>Ascending
		<input type="radio" name="order" value="desc" <?php if($_POST['order']==desc) echo 'checked="yes"'; ?>>Descending

	</fieldset>
	<input type="submit" value="Search" name="submit" />
</form>
 
<?php
	//connect to database
	require_once('connectvars.php');
	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{

		//print out all availabe flights
		$query="SELECT *" .
			" FROM flight_customer" .
			" WHERE TRUE";

		if(!empty($_POST['dep_city'])){
			$_POST['dep_city']=mysqli_real_escape_string($dbc, trim($_POST['dep_city']));
			$query=$query." AND dep_city='".$_POST['dep_city']. "'" ;
		}
		if(!empty($_POST['arr_city'])){
			$_POST['arr_city']=mysqli_real_escape_string($dbc, trim($_POST['arr_city']));
			$query=$query." AND arr_city='".$_POST['arr_city']. "'" ;
		}
		if(!empty($_POST['date'])){
			$_POST['date']=mysqli_real_escape_string($dbc, trim($_POST['date']));
			$query=$query." AND date='".$_POST['date']. "'" ;
		}

		if(!empty($_POST['sort'])){
			$_POST['sort']=mysqli_real_escape_string($dbc, trim($_POST['sort']));
			switch($_POST['sort']){
				case "date":
					$query=$query." ORDER BY date";
					break;
				case "flight_number":
					$query=$query." ORDER BY flight_number";
					break;
				case "dep_time":
					$query=$query." ORDER BY dep_time";
					break;
				case "arr_time":
					$query=$query." ORDER BY arr_time";
					break; 
			}
		}

		if(!empty($_POST['order'])){
			$_POST['order']=mysqli_real_escape_string($dbc, trim($_POST['order']));
			switch($_POST['order']){
				case "asc":
					$query=$query." ASC";
					break;
				case "desc":
					$query=$query." DESC";
					break;
			}
		}

		if(isset($query)){
			//get all schedule

			$data=mysqli_query($dbc, $query);
			if(!$data){
				mysqli_close ($dbc);
				$error_msg='Error retrieving flight info';
			}else{
				echo '<table border="1">';
				echo '<tr><th>Flight Number</th><th>Date</th><th>Dep. City</th><th>Arr. City</th><th>Dep. Time</th><th>Arr. Time</th><th>Status</th><th>Available Seat</th><th>Action</th></tr>';
				while($row = mysqli_fetch_array($data)){
					echo '<tr>';
					echo '<td>';
					echo $row['flight_number'];
					echo '</td>';
					echo '<td>';
					echo $row['date'];
					echo '</td>';
					echo '<td>';
					echo $row['dep_city'];
					echo '</td>';
					echo '<td>';
					echo $row['arr_city'];
					echo '</td>';
					echo '<td>';
					echo $row['dep_time'];
					echo '</td>';
					echo '<td>';
					echo $row['arr_time'];
					echo '</td>';
					echo '<td>';
					echo $row['status'];
					echo '</td>';
					echo '<td>';
					echo $row['available_seat'];
					echo '</td>';
					echo '<td>';
					if (($row['status']=='unknown' || $row['status']== 'on time' || $row['status']=='delayed') && $row['available_seat']>0){
						echo '<a href="reservation.php?flight_number='.$row['flight_number'].'&date='.$row['date'].'">reserve</a>';
					}
					echo '</td>';
					echo '</tr>';
				}	
				echo '</table>';
			}
		}
	}

?>

<?php
	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

                                                                           treetop/logout.php~                                                                                 0100644 0015412 0015412 00000001131 12110064137 015210  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	
	session_start();
	
	if(isset($_SESSION['user_id'])){
		//delete session variables
		$_SESSION=array();
	}

	//delete session cookie
	if(isset($_SESSION[session_name()])) {
		setcookie(session_name(), '', time()-3600);
	}
	
	//destroy session
	session_destroy();

	//delete user cookie
	setcookie('user_id', '', time()-3600);
	setcookie('username', '', time()-3600);
	setcookie('passenger_id', '', time()-3600);
	setcookie('account_type', '', time()-3600);	

	$home_url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']) . '/index.php';
	header('Location: ' . $home_url);
?>

                                                                                                                                                                                                                                                                                                                                                                                                                                       treetop/connectvars.php                                                                             0100644 0015412 0015412 00000000305 12111765167 016044  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php	
	
	//Define Database Variables
	define('DB_HOST', 'sunapee.cs.dartmouth.edu');
	define('DB_USER', 'evenstar');
	define('DB_PASSWORD', 'testpassword');
	define('DB_NAME', 'evenstar_db');

?>
                                                                                                                                                                                                                                                                                                                           treetop/login.php                                                                                   0100644 0015412 0015412 00000005150 12111764761 014631  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	
	//mysql global variables
	require_once('connectvars.php');

	//start session
	require_once('startsession.php');
	
	//Clear error message
	$error_msg="";

	//Insert header
	$page_title='Login';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');
?>

<?php

	//if not logged in
	if (!isset($_SESSION['u_id'])){
		if (isset($_POST['submit'])){

			//connect to database
			$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
			if(!$dbc){
				$error_msg='Error connecting to MySQL Database';
			}else{
				//sanitizer
				$_POST['username']=mysqli_real_escape_string($dbc, $_POST['username']);
				$_POST['password']=mysqli_real_escape_string($dbc, $_POST['password']);

	
				//extract data from the form
				$username=$_POST['username'];
				$password=$_POST['password'];

				if (!empty($username) && !empty($password)){
					$query="SELECT user_id, username, account_type, passenger_id FROM account WHERE username='$username' AND password=SHA('$password')";
					$data=mysqli_query($dbc, $query);
					if(!$data){
						mysqli_close ($dbc);
						$error_msg='Error login';
					}else{

						if (mysqli_num_rows($data)==1) {
							$row=mysqli_fetch_array($data);
							$_SESSION['user_id'] = $row['user_id']; 
							$_SESSION['username'] = $row['username'];
							$_SESSION['account_type'] = $row['account_type'];

							if (!empty($row['passenger_id'])) {
								$_SESSION['passenger_id'] = $row['passenger_id'];
							}

							setcookie('user_id', $row['user_id'], time() + (60*60*24*1)); //24 hours
							setcookie('username', $row['username'], time() + (60*60*24*1));
							if (!empty($row['passenger_id'])) {
								setcookie('passenger_id', $row['passenger_id'], time() + (60*60*24*1));
							}
							setcookie('account_type', $row['account_type'], time() + (60*60*24*1));

							//redirect to home page
							$home_url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']) . '/index.php';
							header('Location: ' . $home_url);
					
						}
						else{
						$error_msg= 'invalid username or password.';
						}
					}
				}
				else{
					$error_msg='must enter username and passowrd.';
				}
			}
		}
	}

?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Log In</legend>
		<input type="text" name="username" placeholder="username" /></br>
		<input type="password" name="password" placeholder="password"/>
	</fieldset>
	<input type="submit" value="Log In" name="submit" />
</form>

<?php
	//close db
	require_once('closedb.php');

	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>


                                                                                                                                                                                                                                                                                                                                                                                                                        treetop/schedule.php~                                                                               0100644 0015412 0015412 00000005667 12111770110 015511  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Schedule';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');
	$error_msg="";
?>

<form method="get" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Plan Your Travel</legend>
		<input type="text" name="dep_city" placeholder="From City" value="<?php if (!empty($_GET['dep_city'])) echo $_GET['dep_city']; ?>" />
		<input type="text" name="arr_city" placeholder="To City" value="<?php if (!empty($_GET['arr_city'])) echo $_GET['arr_city']; ?>" />
	</fieldset>
	<input type="submit" value="Search" name="submit" />
</form>
 
<?php



	//connect to database
	require_once('connectvars.php');
	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 	
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{

		if(!empty($_GET['dep_city']) && !empty($_GET['arr_city'])){
			$_GET['arr_city']=mysqli_real_escape_string($dbc, trim($_GET['arr_city']));
			$_GET['dep_city']=mysqli_real_escape_string($dbc, trim($_GET['dep_city']));
			$query="SELECT *" .
			" FROM flight_schedule_human" .
			" WHERE dep_city='".$_GET['dep_city']. "' AND" .
			" arr_city='".$_GET['arr_city']."'";


		}else if(!empty($_GET['dep_city'])){
			$_GET['dep_city']=mysqli_real_escape_string($dbc, trim($_GET['dep_city']));
			$query="SELECT *" .
			" FROM flight_schedule_human" .
			" WHERE dep_city='".$_GET['dep_city']. "'" ;
			echo $query;
		}else if(!empty($_GET['arr_city'])){
			$_GET['arr_city']=mysqli_real_escape_string($dbc, trim($_GET['arr_city']));
			$query="SELECT *" .
			" FROM flight_schedule_human" .
			" WHERE arr_city='".$_GET['arr_city']. "'" ;

		}else{
			$query="SELECT *" .
			" FROM flight_schedule_human" ;

		}


		
		//get all schedule

		$data=mysqli_query($dbc, $query);
		if(!$data){
			mysqli_close ($dbc);
			$error_msg='Error retrieving schedules';
		}else{
			echo '<table border="1">';
			echo '<tr><th>Flight Number</th><th>Dep. Airport</th><th>Dep. City</th><th>Arr. Airport</th><th>Arr. City</th><th>Day of Operation</th><th>Dep. Time</th><th>Arr. Time</th><th>Aircraft</th</tr>';
			while($row = mysqli_fetch_array($data)){
				echo '<tr>';
				echo '<td>';
				echo $row['flight_number'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_airport'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_city'];
				echo '</td>';
				echo '<td>';
				echo $row['arr_airport'];
				echo '</td>';
				echo '<td>';
				echo $row['arr_city'];
				echo '</td>';
				echo '<td>';
				echo $row['weekday'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_time'];
				echo '</td>';
				echo '<td>';
				echo $row['arr_time'];
				echo '</td>';
				echo '<td>';
				echo $row['aircraft'];
				echo '</td>';
				echo '</tr>';
			}	
			echo '</table>';
		}

	}



?>

<?php
	//close db
	require_once('closedb.php');

	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

                                                                         treetop/footer.php~                                                                                 0100644 0015412 0015412 00000000133 12111520362 015174  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               	<hr />
	<p class="footer">Chuanqi Sun CS61 - Winter 2013 evenstar_db</p>
</body>
</html>

                                                                                                                                                                                                                                                                                                                                                                                                                                     treetop/header.php~                                                                                 0100644 0015412 0015412 00000000435 12110064257 015140  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	//require_once('startsession.php');
	
	//Insert header
	$page_title='Home';
	require_once('header.php');

	//Insert nabigation menu
	//require_once('navmenu.php');
?>


<?php
	//do something here
?>

<?php

	//insert footer
	require_once('footer.php');
?>

                                                                                                                                                                                                                                   treetop/reservation.php                                                                             0100644 0015412 0015412 00000011246 12111765005 016055  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Reservation';
	require_once('header.php');

	$error_msg="";

	//Insert nabigation menu
	require_once('navmenu.php');

	require_once('connectvars.php');

?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Manage Your Researvation</legend>
		<input type="text" name="flight_number" placeholder="Flight Number" value="<?php if (!empty($_POST['flight_number'])) {echo $_POST['flight_number'];}else if(!empty($_GET['flight_number'])) {echo $_GET['flight_number'];} ?>"/>
		<input type="text" name="date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['date'])) {echo $_POST['date'];}else if(!empty($_GET['date'])) {echo $_GET['date'];} ?>"/><br>
		<input type="radio" name="action" value="make" <?php if($_POST['action']==make || empty($_POST['action'])) echo 'checked="yes"'; ?>>Reserve
		<input type="radio" name="action" value="cancel" <?php if($_POST['action']==cancel) echo 'checked="yes"'; ?>>Cancel<br>
	</fieldset>
	<input type="submit" value="Execute" name="submit" />
</form>


 
<?php

	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{
		//deal with new reservation
		if(!isset($_SESSION['passenger_id'])){
			echo "Sorry Please login to manage reservations.";
		}else if($_POST['action']=='make' && !empty($_POST['flight_number']) && !empty($_POST['date'])){
			//sanitizer
			$_POST['flight_number']=mysqli_real_escape_string($dbc, trim($_POST['flight_number']));
			$_POST['date']=mysqli_real_escape_string($dbc, trim($_POST['date']));

			$query="SELECT make_reservation('".$_SESSION['passenger_id']."','".$_POST['flight_number']."','".$_POST['date']."') as result";
			$data=mysqli_query($dbc, $query);
			if(!$data){
				mysqli_close ($dbc);
				$error_msg='Error making reservation';
			}else{
				$row=mysqli_fetch_array($data);
				switch ($row['result']) {
					case '0':
						$error_msg=  "reservation made successfully!";
						break;
					case '1':
						$error_msg=  "sorry, the flight is full.";
						break;
					case '2':
						$error_msg=  "sorry, the flight is no reservable.";
						break;
					case '3':
						$error_msg=  "sorry, you have already reserved this flight.";
						break;
				}
			}
		}
	}

?>

<?php
	//deal with reservation cancelation
	if(!isset($_SESSION['passenger_id'])){
		$error_msg= 'Sorry Please login to manage reservations.';
	}else if($_POST['action']=='cancel' && !empty($_POST['flight_number']) && !empty($_POST['date'])){
		//sanitizer
		$_POST['flight_number']=mysqli_real_escape_string($dbc, trim($_POST['flight_number']));
		$_POST['date']=mysqli_real_escape_string($dbc, trim($_POST['date']));

		$query="SELECT cancel_reservation('".$_SESSION['passenger_id']."','".$_POST['flight_number']."','".$_POST['date']."') as result";
		$data=mysqli_query($dbc, $query);
		if(!$data){
			mysqli_close ($dbc);
			$error_msg='Error canceling reservation';
		}else{
			$row=mysqli_fetch_array($data);
			switch ($row['result']) {
				case '0':
					$error_msg=  "reservation canceled successfully!";
					break;
				case '1':
					$error_msg=  "sorry, you are not on this flight.";
					break;
				case '2':
					$error_msg=  "sorry, the flight is no cancelable.";
					break;
			}
		}
	}
?>
	

<?php	
	//check if logged in
	if (!isset($_SESSION['passenger_id'])){
		$error_msg= 'Sorry Please login to manage reservations.';
	}else{
		//display all reservations
		$query="SELECT * FROM reservation_customer WHERE passenger_id='".$_SESSION['passenger_id']."'";
		$data=mysqli_query($dbc, $query);
		if(!$data){
			mysqli_close ($dbc);
			$error_msg='Error retrieving reservation info';
		}else{
			//print all reservations
			echo '<table border="1">';
			echo '<tr><th>Flight Number</th><th>Flight Date</th><th>Dep. City</th><th>Arr. City</th><th>Status</th><th>Departure Time</th><th>Seat Number</th</tr><th>Aircraft</th</tr>';
			while($row = mysqli_fetch_array($data)){
				echo '<tr>';
				echo '<td>';
				echo $row['flight_number'];
				echo '</td>';
				echo '<td>';
				echo $row['flight_date'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_city'];
				echo '</td>';
				echo '<td>';
				echo $row['arr_city'];
				echo '</td>';
				echo '<td>';
				echo $row['status'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_time'];
				echo '</td>';
				echo '<td>';
				echo $row['seat_number'];
				echo '</td>';
				echo '<td>';
				echo $row['aircraft'];
				echo '</td>';
				echo '</tr>';
			}	
			echo '</table>';
		}
	}
?>

<?php
	//close db
	require_once('closedb.php');

	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

                                                                                                                                                                                                                                                                                                                                                          treetop/.git/                                                                                       0040755 0015412 0015412 00000000000 12107607677 013662  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/.git/objects/                                                                               0040755 0015412 0015412 00000000000 12107607677 015313  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/.git/objects/pack/                                                                          0040755 0015412 0015412 00000000000 12107607677 016231  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/.git/objects/info/                                                                          0040755 0015412 0015412 00000000000 12107607677 016246  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/.git/config                                                                                 0100644 0015412 0015412 00000000134 12107607676 015044  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               [core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
                                                                                                                                                                                                                                                                                                                                                                                                                                    treetop/.git/info/                                                                                  0040755 0015412 0015412 00000000000 12107607675 014613  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/.git/info/exclude                                                                           0100644 0015412 0015412 00000000360 12107607675 016163  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               # git ls-files --others --exclude-from=.git/info/exclude
# Lines that start with '#' are comments.
# For a project mostly in C, the following would be a good set of
# exclude patterns (uncomment them if you want to use them):
# *.[oa]
# *~
                                                                                                                                                                                                                                                                                treetop/.git/branches/                                                                              0040755 0015412 0015412 00000000000 12107607675 015445  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/.git/HEAD                                                                                   0100644 0015412 0015412 00000000027 12107607675 014300  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               ref: refs/heads/master
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         treetop/.git/description                                                                            0100644 0015412 0015412 00000000111 12107607674 016113  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               Unnamed repository; edit this file 'description' to name the repository.
                                                                                                                                                                                                                                                                                                                                                                                                                                                       treetop/.git/hooks/                                                                                 0040755 0015412 0015412 00000000000 12107607675 015003  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/.git/hooks/prepare-commit-msg.sample                                                        0100755 0015412 0015412 00000002327 12107607675 021722  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               #!/bin/sh
#
# An example hook script to prepare the commit log message.
# Called by "git commit" with the name of the file that has the
# commit message, followed by the description of the commit
# message's source.  The hook's purpose is to edit the commit
# message file.  If the hook fails with a non-zero status,
# the commit is aborted.
#
# To enable this hook, rename this file to "prepare-commit-msg".

# This hook includes three examples.  The first comments out the
# "Conflicts:" part of a merge commit.
#
# The second includes the output of "git diff --name-status -r"
# into the message, just before the "git status" output.  It is
# commented because it doesn't cope with --amend or with squashed
# commits.
#
# The third example adds a Signed-off-by line to the message, that can
# still be edited.  This is rarely a good idea.

case "$2,$3" in
  merge,)
    /usr/bin/perl -i.bak -ne 's/^/# /, s/^# #/#/ if /^Conflicts/ .. /#/; print' "$1" ;;

# ,|template,)
#   /usr/bin/perl -i.bak -pe '
#      print "\n" . `git diff --cached --name-status -r`
#	 if /^#/ && $first++ == 0' "$1" ;;

  *) ;;
esac

# SOB=$(git var GIT_AUTHOR_IDENT | sed -n 's/^\(.*>\).*$/Signed-off-by: \1/p')
# grep -qs "^$SOB" "$1" || echo "$SOB" >> "$1"
                                                                                                                                                                                                                                                                                                         treetop/.git/hooks/applypatch-msg.sample                                                            0100755 0015412 0015412 00000000704 12107607674 021137  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               #!/bin/sh
#
# An example hook script to check the commit log message taken by
# applypatch from an e-mail message.
#
# The hook should exit with non-zero status after issuing an
# appropriate message if it wants to stop the commit.  The hook is
# allowed to edit the commit message file.
#
# To enable this hook, rename this file to "applypatch-msg".

. git-sh-setup
test -x "$GIT_DIR/hooks/commit-msg" &&
	exec "$GIT_DIR/hooks/commit-msg" ${1+"$@"}
:
                                                            treetop/.git/hooks/pre-commit.sample                                                                0100755 0015412 0015412 00000003250 12107607675 020262  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               #!/bin/sh
#
# An example hook script to verify what is about to be committed.
# Called by "git commit" with no arguments.  The hook should
# exit with non-zero status after issuing an appropriate message if
# it wants to stop the commit.
#
# To enable this hook, rename this file to "pre-commit".

if git rev-parse --verify HEAD >/dev/null 2>&1
then
	against=HEAD
else
	# Initial commit: diff against an empty tree object
	against=4b825dc642cb6eb9a060e54bf8d69288fbee4904
fi

# If you want to allow non-ascii filenames set this variable to true.
allownonascii=$(git config hooks.allownonascii)

# Redirect output to stderr.
exec 1>&2

# Cross platform projects tend to avoid non-ascii filenames; prevent
# them from being added to the repository. We exploit the fact that the
# printable range starts at the space character and ends with tilde.
if [ "$allownonascii" != "true" ] &&
	# Note that the use of brackets around a tr range is ok here, (it's
	# even required, for portability to Solaris 10's /usr/bin/tr), since
	# the square bracket bytes happen to fall in the designated range.
	test $(git diff --cached --name-only --diff-filter=A -z $against |
	  LC_ALL=C tr -d '[ -~]\0' | wc -c) != 0
then
	echo "Error: Attempt to add a non-ascii file name."
	echo
	echo "This can cause problems if you want to work"
	echo "with people on other platforms."
	echo
	echo "To be portable it is advisable to rename the file ..."
	echo
	echo "If you know what you are doing you can disable this"
	echo "check using:"
	echo
	echo "  git config hooks.allownonascii true"
	echo
	exit 1
fi

# If there are whitespace errors, print the offending file names and fail.
exec git diff-index --check --cached $against --
                                                                                                                                                                                                                                                                                                                                                        treetop/.git/hooks/update.sample                                                                    0100755 0015412 0015412 00000007033 12107607674 017472  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               #!/bin/sh
#
# An example hook script to blocks unannotated tags from entering.
# Called by "git receive-pack" with arguments: refname sha1-old sha1-new
#
# To enable this hook, rename this file to "update".
#
# Config
# ------
# hooks.allowunannotated
#   This boolean sets whether unannotated tags will be allowed into the
#   repository.  By default they won't be.
# hooks.allowdeletetag
#   This boolean sets whether deleting tags will be allowed in the
#   repository.  By default they won't be.
# hooks.allowmodifytag
#   This boolean sets whether a tag may be modified after creation. By default
#   it won't be.
# hooks.allowdeletebranch
#   This boolean sets whether deleting branches will be allowed in the
#   repository.  By default they won't be.
# hooks.denycreatebranch
#   This boolean sets whether remotely creating branches will be denied
#   in the repository.  By default this is allowed.
#

# --- Command line
refname="$1"
oldrev="$2"
newrev="$3"

# --- Safety check
if [ -z "$GIT_DIR" ]; then
	echo "Don't run this script from the command line." >&2
	echo " (if you want, you could supply GIT_DIR then run" >&2
	echo "  $0 <ref> <oldrev> <newrev>)" >&2
	exit 1
fi

if [ -z "$refname" -o -z "$oldrev" -o -z "$newrev" ]; then
	echo "Usage: $0 <ref> <oldrev> <newrev>" >&2
	exit 1
fi

# --- Config
allowunannotated=$(git config --bool hooks.allowunannotated)
allowdeletebranch=$(git config --bool hooks.allowdeletebranch)
denycreatebranch=$(git config --bool hooks.denycreatebranch)
allowdeletetag=$(git config --bool hooks.allowdeletetag)
allowmodifytag=$(git config --bool hooks.allowmodifytag)

# check for no description
projectdesc=$(sed -e '1q' "$GIT_DIR/description")
case "$projectdesc" in
"Unnamed repository"* | "")
	echo "*** Project description file hasn't been set" >&2
	exit 1
	;;
esac

# --- Check types
# if $newrev is 0000...0000, it's a commit to delete a ref.
zero="0000000000000000000000000000000000000000"
if [ "$newrev" = "$zero" ]; then
	newrev_type=delete
else
	newrev_type=$(git cat-file -t $newrev)
fi

case "$refname","$newrev_type" in
	refs/tags/*,commit)
		# un-annotated tag
		short_refname=${refname##refs/tags/}
		if [ "$allowunannotated" != "true" ]; then
			echo "*** The un-annotated tag, $short_refname, is not allowed in this repository" >&2
			echo "*** Use 'git tag [ -a | -s ]' for tags you want to propagate." >&2
			exit 1
		fi
		;;
	refs/tags/*,delete)
		# delete tag
		if [ "$allowdeletetag" != "true" ]; then
			echo "*** Deleting a tag is not allowed in this repository" >&2
			exit 1
		fi
		;;
	refs/tags/*,tag)
		# annotated tag
		if [ "$allowmodifytag" != "true" ] && git rev-parse $refname > /dev/null 2>&1
		then
			echo "*** Tag '$refname' already exists." >&2
			echo "*** Modifying a tag is not allowed in this repository." >&2
			exit 1
		fi
		;;
	refs/heads/*,commit)
		# branch
		if [ "$oldrev" = "$zero" -a "$denycreatebranch" = "true" ]; then
			echo "*** Creating a branch is not allowed in this repository" >&2
			exit 1
		fi
		;;
	refs/heads/*,delete)
		# delete branch
		if [ "$allowdeletebranch" != "true" ]; then
			echo "*** Deleting a branch is not allowed in this repository" >&2
			exit 1
		fi
		;;
	refs/remotes/*,commit)
		# tracking branch
		;;
	refs/remotes/*,delete)
		# delete tracking branch
		if [ "$allowdeletebranch" != "true" ]; then
			echo "*** Deleting a tracking branch is not allowed in this repository" >&2
			exit 1
		fi
		;;
	*)
		# Anything else (is there anything else?)
		echo "*** Update hook: unknown type of update to ref $refname of type $newrev_type" >&2
		exit 1
		;;
esac

# --- Finished
exit 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     treetop/.git/hooks/pre-applypatch.sample                                                            0100755 0015412 0015412 00000000616 12107607675 021142  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               #!/bin/sh
#
# An example hook script to verify what is about to be committed
# by applypatch from an e-mail message.
#
# The hook should exit with non-zero status after issuing an
# appropriate message if it wants to stop the commit.
#
# To enable this hook, rename this file to "pre-applypatch".

. git-sh-setup
test -x "$GIT_DIR/hooks/pre-commit" &&
	exec "$GIT_DIR/hooks/pre-commit" ${1+"$@"}
:
                                                                                                                  treetop/.git/hooks/commit-msg.sample                                                                0100755 0015412 0015412 00000001600 12107607675 020257  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               #!/bin/sh
#
# An example hook script to check the commit log message.
# Called by "git commit" with one argument, the name of the file
# that has the commit message.  The hook should exit with non-zero
# status after issuing an appropriate message if it wants to stop the
# commit.  The hook is allowed to edit the commit message file.
#
# To enable this hook, rename this file to "commit-msg".

# Uncomment the below to add a Signed-off-by line to the message.
# Doing this in a hook is a bad idea in general, but the prepare-commit-msg
# hook is more suited to it.
#
# SOB=$(git var GIT_AUTHOR_IDENT | sed -n 's/^\(.*>\).*$/Signed-off-by: \1/p')
# grep -qs "^$SOB" "$1" || echo "$SOB" >> "$1"

# This example catches duplicate Signed-off-by lines.

test "" = "$(grep '^Signed-off-by: ' "$1" |
	 sort | uniq -c | sed -e '/^[ 	]*1[ 	]/d')" || {
	echo >&2 Duplicate Signed-off-by lines.
	exit 1
}
                                                                                                                                treetop/.git/hooks/post-update.sample                                                               0100755 0015412 0015412 00000000275 12107607675 020457  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               #!/bin/sh
#
# An example hook script to prepare a packed repository for use over
# dumb transports.
#
# To enable this hook, rename this file to "post-update".

exec git update-server-info
                                                                                                                                                                                                                                                                                                                                   treetop/.git/hooks/pre-rebase.sample                                                                0100755 0015412 0015412 00000011527 12107607675 020241  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               #!/bin/sh
#
# Copyright (c) 2006, 2008 Junio C Hamano
#
# The "pre-rebase" hook is run just before "git rebase" starts doing
# its job, and can prevent the command from running by exiting with
# non-zero status.
#
# The hook is called with the following parameters:
#
# $1 -- the upstream the series was forked from.
# $2 -- the branch being rebased (or empty when rebasing the current branch).
#
# This sample shows how to prevent topic branches that are already
# merged to 'next' branch from getting rebased, because allowing it
# would result in rebasing already published history.

publish=next
basebranch="$1"
if test "$#" = 2
then
	topic="refs/heads/$2"
else
	topic=`git symbolic-ref HEAD` ||
	exit 0 ;# we do not interrupt rebasing detached HEAD
fi

case "$topic" in
refs/heads/??/*)
	;;
*)
	exit 0 ;# we do not interrupt others.
	;;
esac

# Now we are dealing with a topic branch being rebased
# on top of master.  Is it OK to rebase it?

# Does the topic really exist?
git show-ref -q "$topic" || {
	echo >&2 "No such branch $topic"
	exit 1
}

# Is topic fully merged to master?
not_in_master=`git rev-list --pretty=oneline ^master "$topic"`
if test -z "$not_in_master"
then
	echo >&2 "$topic is fully merged to master; better remove it."
	exit 1 ;# we could allow it, but there is no point.
fi

# Is topic ever merged to next?  If so you should not be rebasing it.
only_next_1=`git rev-list ^master "^$topic" ${publish} | sort`
only_next_2=`git rev-list ^master           ${publish} | sort`
if test "$only_next_1" = "$only_next_2"
then
	not_in_topic=`git rev-list "^$topic" master`
	if test -z "$not_in_topic"
	then
		echo >&2 "$topic is already up-to-date with master"
		exit 1 ;# we could allow it, but there is no point.
	else
		exit 0
	fi
else
	not_in_next=`git rev-list --pretty=oneline ^${publish} "$topic"`
	/usr/bin/perl -e '
		my $topic = $ARGV[0];
		my $msg = "* $topic has commits already merged to public branch:\n";
		my (%not_in_next) = map {
			/^([0-9a-f]+) /;
			($1 => 1);
		} split(/\n/, $ARGV[1]);
		for my $elem (map {
				/^([0-9a-f]+) (.*)$/;
				[$1 => $2];
			} split(/\n/, $ARGV[2])) {
			if (!exists $not_in_next{$elem->[0]}) {
				if ($msg) {
					print STDERR $msg;
					undef $msg;
				}
				print STDERR " $elem->[1]\n";
			}
		}
	' "$topic" "$not_in_next" "$not_in_master"
	exit 1
fi

exit 0

################################################################

This sample hook safeguards topic branches that have been
published from being rewound.

The workflow assumed here is:

 * Once a topic branch forks from "master", "master" is never
   merged into it again (either directly or indirectly).

 * Once a topic branch is fully cooked and merged into "master",
   it is deleted.  If you need to build on top of it to correct
   earlier mistakes, a new topic branch is created by forking at
   the tip of the "master".  This is not strictly necessary, but
   it makes it easier to keep your history simple.

 * Whenever you need to test or publish your changes to topic
   branches, merge them into "next" branch.

The script, being an example, hardcodes the publish branch name
to be "next", but it is trivial to make it configurable via
$GIT_DIR/config mechanism.

With this workflow, you would want to know:

(1) ... if a topic branch has ever been merged to "next".  Young
    topic branches can have stupid mistakes you would rather
    clean up before publishing, and things that have not been
    merged into other branches can be easily rebased without
    affecting other people.  But once it is published, you would
    not want to rewind it.

(2) ... if a topic branch has been fully merged to "master".
    Then you can delete it.  More importantly, you should not
    build on top of it -- other people may already want to
    change things related to the topic as patches against your
    "master", so if you need further changes, it is better to
    fork the topic (perhaps with the same name) afresh from the
    tip of "master".

Let's look at this example:

		   o---o---o---o---o---o---o---o---o---o "next"
		  /       /           /           /
		 /   a---a---b A     /           /
		/   /               /           /
	       /   /   c---c---c---c B         /
	      /   /   /             \         /
	     /   /   /   b---b C     \       /
	    /   /   /   /             \     /
    ---o---o---o---o---o---o---o---o---o---o---o "master"


A, B and C are topic branches.

 * A has one fix since it was merged up to "next".

 * B has finished.  It has been fully merged up to "master" and "next",
   and is ready to be deleted.

 * C has not merged to "next" at all.

We would want to allow C to be rebased, refuse A, and encourage
B to be deleted.

To compute (1):

	git rev-list ^master ^topic next
	git rev-list ^master        next

	if these match, topic has not merged in next at all.

To compute (2):

	git rev-list master..topic

	if this is empty, it is fully merged to "master".
                                                                                                                                                                         treetop/.git/refs/                                                                                  0040755 0015412 0015412 00000000000 12107607674 014616  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/.git/refs/heads/                                                                            0040755 0015412 0015412 00000000000 12107607674 015702  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/.git/refs/tags/                                                                             0040755 0015412 0015412 00000000000 12107607674 015554  5                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               treetop/reservation.php~                                                                            0100644 0015412 0015412 00000011173 12111764625 016261  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Reservation';
	require_once('header.php');

	$error_msg="";

	//Insert nabigation menu
	require_once('navmenu.php');

	require_once('connectvars.php');

?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Manage Your Researvation</legend>
		<input type="text" name="flight_number" placeholder="Flight Number" value="<?php if (!empty($_POST['flight_number'])) {echo $_POST['flight_number'];}else if(!empty($_GET['flight_number'])) {echo $_GET['flight_number'];} ?>"/>
		<input type="text" name="date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['date'])) {echo $_POST['date'];}else if(!empty($_GET['date'])) {echo $_GET['date'];} ?>"/><br>
		<input type="radio" name="action" value="make" <?php if($_POST['action']==make || empty($_POST['action'])) echo 'checked="yes"'; ?>>Reserve
		<input type="radio" name="action" value="cancel" <?php if($_POST['action']==cancel) echo 'checked="yes"'; ?>>Cancel<br>
	</fieldset>
	<input type="submit" value="Execute" name="submit" />
</form>


 
<?php

	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{
		//deal with new reservation
		if(!isset($_SESSION['passenger_id'])){
			echo "Sorry Please login to manage reservations.";
		}else if($_POST['action']=='make' && !empty($_POST['flight_number']) && !empty($_POST['date'])){
			//sanitizer
			$_POST['flight_number']=mysqli_real_escape_string($dbc, trim($_POST['flight_number']));
			$_POST['date']=mysqli_real_escape_string($dbc, trim($_POST['date']));

			$query="SELECT make_reservation('".$_SESSION['passenger_id']."','".$_POST['flight_number']."','".$_POST['date']."') as result";
			$data=mysqli_query($dbc, $query);
			if(!$data){
				mysqli_close ($dbc);
				$error_msg='Error making reservation';
			}else{
				$row=mysqli_fetch_array($data);
				switch ($row['result']) {
					case '0':
						$error_msg=  "reservation made successfully!";
						break;
					case '1':
						$error_msg=  "sorry, the flight is full.";
						break;
					case '2':
						$error_msg=  "sorry, the flight is no reservable.";
						break;
					case '3':
						$error_msg=  "sorry, you have already reserved this flight.";
						break;
				}
			}
		}
	}

?>

<?php
	//deal with reservation cancelation
	if(!isset($_SESSION['passenger_id'])){
		$error_msg= 'Sorry Please login to manage reservations.';
	}else if($_POST['action']=='cancel' && !empty($_POST['flight_number']) && !empty($_POST['date'])){
		//sanitizer
		$_POST['flight_number']=mysqli_real_escape_string($dbc, trim($_POST['flight_number']));
		$_POST['date']=mysqli_real_escape_string($dbc, trim($_POST['date']));

		$query="SELECT cancel_reservation('".$_SESSION['passenger_id']."','".$_POST['flight_number']."','".$_POST['date']."') as result";
		$data=mysqli_query($dbc, $query);
		if(!$data){
			mysqli_close ($dbc);
			$error_msg='Error canceling reservation';
		}else{
			$row=mysqli_fetch_array($data);
			switch ($row['result']) {
				case '0':
					$error_msg=  "reservation canceled successfully!";
					break;
				case '1':
					$error_msg=  "sorry, you are not on this flight.";
					break;
				case '2':
					$error_msg=  "sorry, the flight is no cancelable.";
					break;
			}
		}
	}
?>
	

<?php	
	//check if logged in
	if (!isset($_SESSION['passenger_id'])){
		$error_msg= 'Sorry Please login to manage reservations.';
	}else{
		//display all reservations
		$query="SELECT * FROM reservation_customer WHERE passenger_id='".$_SESSION['passenger_id']."'";
		$data=mysqli_query($dbc, $query);
		if(!$data){
			mysqli_close ($dbc);
			$error_msg='Error retrieving reservation info';
		}else{
			//print all reservations
			echo '<table border="1">';
			echo '<tr><th>Flight Number</th><th>Flight Date</th><th>Dep. City</th><th>Arr. City</th><th>Status</th><th>Departure Time</th><th>Seat Number</th</tr><th>Aircraft</th</tr>';
			while($row = mysqli_fetch_array($data)){
				echo '<tr>';
				echo '<td>';
				echo $row['flight_number'];
				echo '</td>';
				echo '<td>';
				echo $row['flight_date'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_city'];
				echo '</td>';
				echo '<td>';
				echo $row['arr_city'];
				echo '</td>';
				echo '<td>';
				echo $row['status'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_time'];
				echo '</td>';
				echo '<td>';
				echo $row['seat_number'];
				echo '</td>';
				echo '<td>';
				echo $row['aircraft'];
				echo '</td>';
				echo '</tr>';
			}	
			echo '</table>';
		}
	}
?>

<?php
	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

                                                                                                                                                                                                                                                                                                                                                                                                     treetop/startsession.php~                                                                           0100644 0015412 0015412 00000000427 12110064635 016452  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	session_start();

	//auto re-login by cookie
	if(!isset($_SESSION['user_id'])){
		if(isset($_COOKIE['user_id'])){
			$_SESSION['user_id']=$_COOKIE['user_id'];
			$_SESSION['username']=$_COOKIE['username'];
			$_SESSION['account_type']=$_COOKIE['account_type'];
		}
	}
?>

                                                                                                                                                                                                                                         treetop/footer.php                                                                                  0100644 0015412 0015412 00000000140 12111520372 014775  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               	<hr />
	<p class="footer">Chuanqi Sun | CS61 - Winter 2013 |  evenstar_db</p>
</body>
</html>

                                                                                                                                                                                                                                                                                                                                                                                                                                treetop/stats.php                                                                                   0100644 0015412 0015412 00000004134 12111765144 014654  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Home';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');

	require_once('connectvars.php');

	$error_msg="";
?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Top 5</legend>
		From
		<input type="text" name="begin_date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['begin_date'])) echo $_POST['begin_date']; ?>" />
		To
		<input type="text" name="end_date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['end_date'])) echo $_POST['end_date']; ?>" />
	</fieldset>
	<input type="submit" value="Show" name="submit" />
</form>
	

<?php

	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{

		//check if logged in
		if ($_SESSION['account_type']!='employee'){
			$error_msg= 'Sorry, you are not authorized.';
		}else if(!empty($_POST['submit'])){
			//sanitizer
			$_POST['begin_date']=mysqli_real_escape_string($dbc, trim($_POST['begin_date']));
			$_POST['end_date']=mysqli_real_escape_string($dbc, trim($_POST['end_date']));

			//display all reservations
			$query="CALL get_popular_flight('".$_POST['begin_date']."','".$_POST['end_date']."')";
			$data=mysqli_query($dbc, $query);
			if(!$data){
				mysqli_close ($dbc);
				$error_msg='Error retrieving stats';
			}else{
				//print all reservations
				echo '<table border="1">';
				echo '<tr><th>Flight Number</th><th>From</th><th>To</th><th>Total Traffic</th></tr>';
				while($row = mysqli_fetch_array($data)){
					echo '<tr>';
					echo '<td>';
					echo $row['flight_number'];
					echo '</td>';
					echo '<td>';
					echo $row['dep_city'];
					echo '</td>';
					echo '<td>';
					echo $row['arr_city'];
					echo '</td>';
					echo '<td>';
					echo $row['total_passenger'];
					echo '</td>';
					echo '</tr>';
				}	
				echo '</table>';
			}
		}
	}
?>

<?php
	//close db
	require_once('closedb.php');

	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

                                                                                                                                                                                                                                                                                                                                                                                                                                    treetop/index.php                                                                                   0100644 0015412 0015412 00000000474 12111507214 014620  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Home';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');
?>


<?php
	//show something here for the home page, if necessary.
?>

<?php

	//insert footer
	require_once('footer.php');
?>

                                                                                                                                                                                                    treetop/flight.php                                                                                  0100644 0015412 0015412 00000010741 12111764744 015001  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php

	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Flight';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');

?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Search Flight</legend>
		<input type="text" name="dep_city" placeholder="From City" value="<?php if (!empty($_POST['dep_city'])) echo $_POST['dep_city']; ?>" />
		<input type="text" name="arr_city" placeholder="To City" value="<?php if (!empty($_POST['arr_city'])) echo $_POST['arr_city']; ?>" />
		<input type="text" name="date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['date'])) echo $_POST['date']; ?>" /></br>
		sort by 
		<input type="radio" name="sort" value="date" <?php if($_POST['sort']==date || empty($_POST['sort'])) echo 'checked="yes"'; ?>>Date
		<input type="radio" name="sort" value="flight_number" <?php if($_POST['sort']==flight_number) echo 'checked="yes"'; ?>>Flight Number
		<input type="radio" name="sort" value="dep_time" <?php if($_POST['sort']==dep_time) echo 'checked="yes"'; ?>>Departure Time
		<input type="radio" name="sort" value="arr_time" <?php if($_POST['sort']==arr_time) echo 'checked="yes"'; ?>>Arrival Time</br>
		order 
		<input type="radio" name="order" value="asc" <?php if($_POST['order']==asc || empty($_POST['order'])) echo 'checked="yes"'; ?>>Ascending
		<input type="radio" name="order" value="desc" <?php if($_POST['order']==desc) echo 'checked="yes"'; ?>>Descending

	</fieldset>
	<input type="submit" value="Search" name="submit" />
</form>
 
<?php
	//connect to database
	require_once('connectvars.php');
	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{

		//print out all availabe flights
		$query="SELECT *" .
			" FROM flight_customer" .
			" WHERE TRUE";

		if(!empty($_POST['dep_city'])){
			$_POST['dep_city']=mysqli_real_escape_string($dbc, trim($_POST['dep_city']));
			$query=$query." AND dep_city='".$_POST['dep_city']. "'" ;
		}
		if(!empty($_POST['arr_city'])){
			$_POST['arr_city']=mysqli_real_escape_string($dbc, trim($_POST['arr_city']));
			$query=$query." AND arr_city='".$_POST['arr_city']. "'" ;
		}
		if(!empty($_POST['date'])){
			$_POST['date']=mysqli_real_escape_string($dbc, trim($_POST['date']));
			$query=$query." AND date='".$_POST['date']. "'" ;
		}

		if(!empty($_POST['sort'])){
			$_POST['sort']=mysqli_real_escape_string($dbc, trim($_POST['sort']));
			switch($_POST['sort']){
				case "date":
					$query=$query." ORDER BY date";
					break;
				case "flight_number":
					$query=$query." ORDER BY flight_number";
					break;
				case "dep_time":
					$query=$query." ORDER BY dep_time";
					break;
				case "arr_time":
					$query=$query." ORDER BY arr_time";
					break; 
			}
		}

		if(!empty($_POST['order'])){
			$_POST['order']=mysqli_real_escape_string($dbc, trim($_POST['order']));
			switch($_POST['order']){
				case "asc":
					$query=$query." ASC";
					break;
				case "desc":
					$query=$query." DESC";
					break;
			}
		}

		if(isset($query)){
			//get all schedule

			$data=mysqli_query($dbc, $query);
			if(!$data){
				mysqli_close ($dbc);
				$error_msg='Error retrieving flight info';
			}else{
				echo '<table border="1">';
				echo '<tr><th>Flight Number</th><th>Date</th><th>Dep. City</th><th>Arr. City</th><th>Dep. Time</th><th>Arr. Time</th><th>Status</th><th>Available Seat</th><th>Action</th></tr>';
				while($row = mysqli_fetch_array($data)){
					echo '<tr>';
					echo '<td>';
					echo $row['flight_number'];
					echo '</td>';
					echo '<td>';
					echo $row['date'];
					echo '</td>';
					echo '<td>';
					echo $row['dep_city'];
					echo '</td>';
					echo '<td>';
					echo $row['arr_city'];
					echo '</td>';
					echo '<td>';
					echo $row['dep_time'];
					echo '</td>';
					echo '<td>';
					echo $row['arr_time'];
					echo '</td>';
					echo '<td>';
					echo $row['status'];
					echo '</td>';
					echo '<td>';
					echo $row['available_seat'];
					echo '</td>';
					echo '<td>';
					if (($row['status']=='unknown' || $row['status']== 'on time' || $row['status']=='delayed') && $row['available_seat']>0){
						echo '<a href="reservation.php?flight_number='.$row['flight_number'].'&date='.$row['date'].'">reserve</a>';
					}
					echo '</td>';
					echo '</tr>';
				}	
				echo '</table>';
			}
		}
	}

?>

<?php
	//close db
	require_once('closedb.php');
	
	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

                               treetop/error.php~                                                                                  0100644 0015412 0015412 00000000474 12111507214 015040  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Home';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');
?>


<?php
	//show something here for the home page, if necessary.
?>

<?php

	//insert footer
	require_once('footer.php');
?>

                                                                                                                                                                                                    treetop/schedule.php                                                                                0100644 0015412 0015412 00000005650 12111771475 015322  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Schedule';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');
	$error_msg="";
?>

<form method="get" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Plan Your Travel</legend>
		<input type="text" name="dep_city" placeholder="From City" value="<?php if (!empty($_GET['dep_city'])) echo $_GET['dep_city']; ?>" />
		<input type="text" name="arr_city" placeholder="To City" value="<?php if (!empty($_GET['arr_city'])) echo $_GET['arr_city']; ?>" />
	</fieldset>
	<input type="submit" value="Search" name="submit" />
</form>
 
<?php



	//connect to database
	require_once('connectvars.php');
	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME); 	
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{

		if(!empty($_GET['dep_city']) && !empty($_GET['arr_city'])){
			$_GET['arr_city']=mysqli_real_escape_string($dbc, trim($_GET['arr_city']));
			$_GET['dep_city']=mysqli_real_escape_string($dbc, trim($_GET['dep_city']));
			$query="SELECT *" .
			" FROM flight_schedule_human" .
			" WHERE dep_city='".$_GET['dep_city']. "' AND" .
			" arr_city='".$_GET['arr_city']."'";


		}else if(!empty($_GET['dep_city'])){
			$_GET['dep_city']=mysqli_real_escape_string($dbc, trim($_GET['dep_city']));
			$query="SELECT *" .
			" FROM flight_schedule_human" .
			" WHERE dep_city='".$_GET['dep_city']. "'" ;

		}else if(!empty($_GET['arr_city'])){
			$_GET['arr_city']=mysqli_real_escape_string($dbc, trim($_GET['arr_city']));
			$query="SELECT *" .
			" FROM flight_schedule_human" .
			" WHERE arr_city='".$_GET['arr_city']. "'" ;

		}else{
			$query="SELECT *" .
			" FROM flight_schedule_human" ;

		}


		
		//get all schedule

		$data=mysqli_query($dbc, $query);
		if(!$data){
			mysqli_close ($dbc);
			$error_msg='Error retrieving schedules';
		}else{
			echo '<table border="1">';
			echo '<tr><th>Flight Number</th><th>Dep. Airport</th><th>Dep. City</th><th>Arr. Airport</th><th>Arr. City</th><th>Day of Operation</th><th>Dep. Time</th><th>Arr. Time</th><th>Aircraft</th</tr>';
			while($row = mysqli_fetch_array($data)){
				echo '<tr>';
				echo '<td>';
				echo $row['flight_number'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_airport'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_city'];
				echo '</td>';
				echo '<td>';
				echo $row['arr_airport'];
				echo '</td>';
				echo '<td>';
				echo $row['arr_city'];
				echo '</td>';
				echo '<td>';
				echo $row['weekday'];
				echo '</td>';
				echo '<td>';
				echo $row['dep_time'];
				echo '</td>';
				echo '<td>';
				echo $row['arr_time'];
				echo '</td>';
				echo '<td>';
				echo $row['aircraft'];
				echo '</td>';
				echo '</tr>';
			}	
			echo '</table>';
		}

	}



?>

<?php
	//close db
	require_once('closedb.php');

	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

                                                                                        treetop/passenger.php                                                                               0100644 0015412 0015412 00000004043 12111764776 015516  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Passenger';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');

	require_once('connectvars.php');
	$error_msg="";
?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<fieldset>
		<legend>Passenger List</legend>
		<input type="text" name="flight_number" placeholder="Flight Number" value="<?php if (!empty($_POST['flight_number'])) echo $_POST['flight_number']; ?>" />
		<input type="text" name="date" placeholder="YYYY-MM-DD" value="<?php if (!empty($_POST['date'])) echo $_POST['date']; ?>" />
	</fieldset>
	<input type="submit" value="Show" name="submit" />
</form>
	

<?php

	$dbc=mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	if(!$dbc){
		$error_msg='Error connecting to MySQL Database';
	}else{

		//check if logged in with proper account_type
		if ($_SESSION['account_type']!='employee'){
			$error_msg= 'Sorry, you are not authorized.';
		}else if (!empty($_POST['submit'])){
			//sanitizer
			$_POST['flight_number']=mysqli_real_escape_string($dbc, trim($_POST['flight_number']));
			$_POST['date']=mysqli_real_escape_string($dbc, trim($_POST['date']));

			//display passenger list
			$query="CALL get_passenger_list('".$_POST['flight_number']."','".$_POST['date']."')";
			$data=mysqli_query($dbc, $query);
			if(!$data){
				mysqli_close ($dbc);
				$error_msg='Error retrieving passenger info';
			}else{
				//print all reservations
				echo '<table border="1">';
				echo '<tr><th>Seat Number</th><th>Passenger ID</th><th>Passenger Name</th></tr>';
				while($row = mysqli_fetch_array($data)){
					echo '<tr>';
					echo '<td>';
					echo $row['seat_number'];
					echo '</td>';
					echo '<td>';
					echo $row['id'];
					echo '</td>';
					echo '<td>';
					echo $row['name'];
					echo '</td>';
					echo '</tr>';
				}	
				echo '</table>';
			}
		}
	}
?>

<?php
	//close db
	require_once('closedb.php');

	//insert footer
	require_once('footer.php');

	//error handling
	require_once('error.php');
?>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             treetop/startsession.php                                                                            0100644 0015412 0015412 00000000571 12110064670 016253  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	session_start();

	//auto re-login by cookie
	if(!isset($_SESSION['user_id'])){
		if(isset($_COOKIE['user_id'])){
			$_SESSION['user_id']=$_COOKIE['user_id'];
			$_SESSION['username']=$_COOKIE['username'];
			$_SESSION['account_type']=$_COOKIE['account_type'];
		}
		if(isset($_COOKIE['passenger_id'])){
			$_SESSION['passenger_id']=$_COOKIE['passenger_id'];
		}
	}
?>

                                                                                                                                       treetop/logout.php                                                                                  0100644 0015412 0015412 00000001157 12111510473 015022  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	
	session_start();
	
	if(isset($_SESSION['user_id'])){
		//delete session variables
		$_SESSION=array();
	}

	//delete session cookie
	if(isset($_SESSION[session_name()])) {
		setcookie(session_name(), '', time()-3600);
	}
	
	//destroy session
	session_destroy();

	//delete user cookie by making them expire
	setcookie('user_id', '', time()-3600);
	setcookie('username', '', time()-3600);
	setcookie('passenger_id', '', time()-3600);
	setcookie('account_type', '', time()-3600);	

	$home_url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']) . '/index.php';
	header('Location: ' . $home_url);
?>

                                                                                                                                                                                                                                                                                                                                                                                                                 treetop/index.php~                                                                                  0100644 0015412 0015412 00000000431 12110247175 015015  0                                                                                                    ustar   evenstar                        evenstar                                                                                                                                                                                                               <?php
	  
	//start session
	require_once('startsession.php');
	
	//Insert header
	$page_title='Home';
	require_once('header.php');

	//Insert nabigation menu
	require_once('navmenu.php');
?>


<?php
	//do something here
?>

<?php

	//insert footer
	require_once('footer.php');
?>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       