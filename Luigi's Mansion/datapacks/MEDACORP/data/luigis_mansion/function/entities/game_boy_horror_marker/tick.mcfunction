scoreboard players operation #temp ID = @s ID
execute as @e[tag=luigi,distance=0..] if score @s ID = #temp ID run tag @s add this_luigi
scoreboard players reset #temp ID
execute if entity @s[scores={Room=..-1}] at @e[tag=this_luigi,limit=1] run function #luigis_mansion:entities/game_boy_horror_marker/teleport_lab
execute if entity @s[scores={Room=1..}] at @e[tag=this_luigi,limit=1] run function luigis_mansion:entities/game_boy_horror_marker/teleport_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute unless entity @e[tag=this_luigi,limit=1] run tag @s add dead
execute unless entity @a[tag=looking_at_map,limit=1] run tag @s add dead
tag @e[tag=this_luigi,limit=1] remove this_luigi