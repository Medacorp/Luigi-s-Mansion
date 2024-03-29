scoreboard players operation #temp ID = @s ID
execute as @a[tag=!spectator] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
execute if entity @s[scores={Room=..-1}] at @a[tag=this_player,tag=!looking_at_map,limit=1] run function #luigis_mansion:entities/game_boy_horror_marker/teleport_lab
execute if entity @s[scores={Room=1..}] at @a[tag=this_player,tag=!looking_at_map,limit=1] run function luigis_mansion:entities/game_boy_horror_marker/teleport_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute unless entity @a[tag=this_player,scores={Room=1..},limit=1] unless entity @a[tag=this_player,scores={Room=..-1},limit=1] run tag @s add dead
execute unless entity @a[tag=this_player,limit=1] run tag @s add dead
execute unless entity @a[tag=looking_at_map,limit=1] unless entity @a[tag=opening_map,limit=1] run tag @s add dead
tag @a[tag=this_player] remove this_player