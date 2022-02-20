-- Задание 1: Вывести name, class по кораблям, выпущенным после 1920

--select name, class
--from ships
--where launched > '1920'

-- Задание 2: Вывести name, class по кораблям, выпущенным после 1920, но не позднее 1942

--select name, class
--from ships
--where (launched > '1920') and (launched <='1942')

-- Задание 3: Какое количество кораблей в каждом классе. Вывести количество и class

--select count(name), class
--from ships 
--group by class

-- Задание 4: Для классов кораблей, калибр орудий которых не менее 16, укажите класс и страну. (таблица classes)

--select class, country 
--from classes
--where bore>='16'

-- Задание 5: Укажите корабли, потопленные в сражениях в Северной Атлантике (таблица Outcomes, North Atlantic). Вывод: ship.

--select ship
--from outcomes
--where (result = 'sunk') and (battle = 'North Atlantic')

-- Задание 6: Вывести название (ship) последнего потопленного корабля

--select ship
--from battles
--join outcomes 
--on battles.name = outcomes.battle
--where (result = 'sunk') and (date = (select max(date) from battles)) 

-- Задание 7: Вывести название корабля (ship) и класс (class) последнего потопленного корабля

--select ship, class
--from battles
--join outcomes 
--on battles.name = outcomes.battle
--join ships
--on outcomes.ship = ships.name
--where (result = 'sunk') and (date = (select max(date) from battles))

-- Задание 8: Вывести все потопленные корабли, у которых калибр орудий не менее 16, и которые потоплены. Вывод: ship, class

--select ship, classes.class
--from classes
--join ships
--on classes.class = ships.class
--join outcomes
--on outcomes.ship = ships.name
--where (result = 'sunk') and (numguns>=16)

-- Задание 9: Вывести все классы кораблей, выпущенные США (таблица classes, country = 'USA'). Вывод: class

--select distinct class
--from classes
--where country = 'USA'

-- Задание 10: Вывести все корабли, выпущенные США (таблица classes & ships, country = 'USA'). Вывод: name, class

--select name, classes.class
--from classes
--join ships
--on classes.class = ships.class
--where country = 'USA'


