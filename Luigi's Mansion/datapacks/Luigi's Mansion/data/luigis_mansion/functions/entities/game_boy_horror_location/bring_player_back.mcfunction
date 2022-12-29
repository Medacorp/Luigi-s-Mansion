scoreboard players operation #temp ID = @s ID
execute if entity @s[tag=hit_by_swinging_furniture] as @a[tag=looking_at_map] if score @s ID = #temp ID run tag @s add hit_by_swinging_furniture
execute as @a[tag=looking_at_map] if score @s ID = #temp ID run function luigis_mansion:items/game_boy_horror/map/close
tag @s add dead