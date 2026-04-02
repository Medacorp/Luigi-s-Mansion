function e3_demo:items/poltergust_500/water
scoreboard players remove #temp PoltergustRange 1
execute if score #temp PoltergustRange matches 1.. if block ~ ~ ~ #luigis_mansion:poltergust_ignores positioned ^ ^ ^0.5 run function e3_demo:items/poltergust_500/expel_water_step