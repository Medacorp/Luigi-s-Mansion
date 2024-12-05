execute at @e[tag=same_room,tag=luigi,distance=..1,limit=1] run function luigis_mansion:entities/ghost/set_target_to_attack
scoreboard players add #temp Steps 1
scoreboard players set @s[tag=attack] ActionTime 0
execute unless block ^ ^ ^1 #luigis_mansion:ghosts_ignore unless block ^ ^ ^1 #minecraft:slabs[type=bottom] run scoreboard players set #temp Steps 31
execute if entity @s[tag=!attack] if score #temp Steps matches ..30 positioned ^ ^ ^1 run function luigis_mansion:entities/bowling_ghost/ai/line_of_sight
scoreboard players reset #temp Steps