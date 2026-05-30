scoreboard players set #temp PoltergustRange 10
execute positioned ^ ^ ^0.5 run function e3_demo:items/poltergust_500/vacuuming/default_step
scoreboard players reset #temp PoltergustRange
scoreboard players set @s GhostCount 0
function e3_demo:items/poltergust_500/vacuuming/sound
tag @s remove was_clogged