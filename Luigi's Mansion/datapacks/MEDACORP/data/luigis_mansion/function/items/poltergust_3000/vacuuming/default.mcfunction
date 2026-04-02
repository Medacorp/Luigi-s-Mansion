scoreboard players set #temp PoltergustRange 10
execute positioned ^ ^ ^0.5 run function luigis_mansion:items/poltergust_3000/vacuuming/default_step
scoreboard players reset #temp PoltergustRange
scoreboard players set @s GhostCount 0
function luigis_mansion:items/poltergust_3000/vacuuming/sound
tag @s remove was_clogged