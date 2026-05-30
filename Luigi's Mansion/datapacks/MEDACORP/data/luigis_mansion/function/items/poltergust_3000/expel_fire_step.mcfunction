function luigis_mansion:items/poltergust_3000/fire
scoreboard players remove #temp PoltergustRange 1
execute if score #temp PoltergustRange matches 1.. if block ~ ~ ~ #luigis_mansion:poltergust_ignores positioned ^ ^ ^0.5 run function luigis_mansion:items/poltergust_3000/expel_fire_step