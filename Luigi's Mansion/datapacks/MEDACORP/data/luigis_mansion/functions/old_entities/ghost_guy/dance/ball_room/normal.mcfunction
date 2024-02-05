execute if entity @s[scores={Path=1}] run function luigis_mansion:old_entities/ghost_guy/dance/ball_room/normal/1
execute if entity @s[scores={Path=2}] run function luigis_mansion:old_entities/ghost_guy/dance/ball_room/normal/2
execute if entity @s[scores={Path=3}] run function luigis_mansion:old_entities/ghost_guy/dance/ball_room/normal/3
scoreboard players set #temp Move 5
execute facing entity @e[tag=target,limit=1] feet as @e[tag=partner,limit=1] positioned as @s run function luigis_mansion:old_entities/ghost/move_forward
scoreboard players set #temp Move 5
execute facing entity @e[tag=target,limit=1] feet run function luigis_mansion:old_entities/ghost/move_forward
kill @e[tag=target,limit=1,type=minecraft:marker]
