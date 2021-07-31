scoreboard players operation #temp ID = @s ID
execute as @a if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
tag @s add me
execute as @a[tag=this_player,tag=!looking_at_map,limit=1] at @s run function #luigis_mansion:entities/gameboy_horror_marker/teleport
tag @s remove me
execute unless entity @a[tag=this_player,scores={Room=1..},limit=1] unless entity @a[tag=this_player,scores={Room=..-1},limit=1] run tag @s add dead
execute unless entity @a[tag=this_player,limit=1] run tag @s add dead
execute unless entity @a[tag=looking_at_map,limit=1] unless entity @a[tag=opening_map,limit=1] run tag @s add dead
tag @a[tag=this_player] remove this_player