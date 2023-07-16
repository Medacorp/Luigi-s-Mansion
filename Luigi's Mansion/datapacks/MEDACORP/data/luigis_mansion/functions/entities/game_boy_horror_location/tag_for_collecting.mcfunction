scoreboard players operation #temp ID = @s ID
execute as @a[tag=looking_at_map] if score @s ID = #temp ID run tag @s add collector
scoreboard players reset #temp ID