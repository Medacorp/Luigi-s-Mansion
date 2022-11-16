scoreboard players operation #temp ID = @s ID
execute as @a[tag=looking_at_map] if score @s ID = #temp ID run function luigis_mansion:items/game_boy_horror/map/close
tag @s add dead