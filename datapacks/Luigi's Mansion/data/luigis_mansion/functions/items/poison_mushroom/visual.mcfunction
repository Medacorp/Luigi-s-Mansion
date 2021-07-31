scoreboard players operation #temp ID = @s ID
execute as @e[tag=model_piece,nbt=!{Small:1b}] if score @s ID = #temp ID run data merge entity @s {Small:1b}
scoreboard players reset #temp ID