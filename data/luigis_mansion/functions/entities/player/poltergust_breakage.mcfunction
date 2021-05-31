scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
execute as @e[tag=ghost,tag=hurt] unless entity @s[tag=boo,tag=!dying] if score @s Room = #temp Room run function luigis_mansion:items/poltergust_3000/attacking_ghost
execute positioned ^ ^ ^0.5 as @e[tag=ghost,tag=hurt,tag=being_vacuumed] facing entity @s feet run function luigis_mansion:items/poltergust_3000/vacuuming/break_free
scoreboard players reset #temp Room
tag @s remove poltergust_malfunction
scoreboard players set @s Pull 0