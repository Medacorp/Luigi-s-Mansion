scoreboard players operation #temp ID = @s ID
execute as @a[tag=looking_at_map] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
execute unless entity @a[tag=this_player,limit=1] run tag @s add dead
execute unless entity @a[tag=looking_at_map,limit=1] unless entity @a[tag=opening_map,limit=1] run tag @s add dead
execute if entity @s[tag=!no_ai] rotated ~ 0 positioned ^ ^ ^-4 run function luigis_mansion:entities/player/spawn_ghosts
tag @a[tag=this_player] remove this_player