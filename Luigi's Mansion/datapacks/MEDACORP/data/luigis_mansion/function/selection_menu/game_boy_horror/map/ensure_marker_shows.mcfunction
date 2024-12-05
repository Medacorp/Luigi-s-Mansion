scoreboard players operation #temp ID = @s ID
execute as @e[tag=game_boy_horror_marker] if score #temp ID = @s ID run tag @s add this_marker
execute if entity @e[tag=!this_marker,limit=1] run function luigis_mansion:spawn_entities/game_boy_horror_marker
tag @e[tag=!this_marker,limit=1] remove this_marker
scoreboard players reset #temp ID