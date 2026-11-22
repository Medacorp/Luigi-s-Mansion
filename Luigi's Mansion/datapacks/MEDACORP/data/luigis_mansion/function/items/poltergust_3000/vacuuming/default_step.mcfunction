function luigis_mansion:items/poltergust_3000/vacuum
scoreboard players remove #temp PoltergustRange 1
execute unless block ^ ^ ^ #luigis_mansion:poltergust_ignores unless block ^ ^ ^0.5 #luigis_mansion:poltergust_ignores run scoreboard players set #temp PoltergustRange 0
execute if score #temp PoltergustRange matches 1.. positioned ^ ^ ^0.5 run function luigis_mansion:items/poltergust_3000/vacuuming/default_step