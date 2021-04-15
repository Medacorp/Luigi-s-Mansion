execute if entity @s[scores={GhostGuyCouple=1}] run function luigis_mansion:entities/ghost_guy/dance/ball_room/hidden/1
execute if entity @s[scores={GhostGuyCouple=2}] run function luigis_mansion:entities/ghost_guy/dance/ball_room/hidden/2
execute if entity @s[scores={GhostGuyCouple=3}] run function luigis_mansion:entities/ghost_guy/dance/ball_room/hidden/3
scoreboard players set #temp Move 1
execute facing entity @e[tag=target,limit=1] feet as @e[tag=partner,limit=1] positioned as @s run function luigis_mansion:entities/ghost/move_forward
scoreboard players set #temp Move 1
execute facing entity @e[tag=target,limit=1] feet run function luigis_mansion:entities/ghost/move_forward
kill @e[tag=target,limit=1,type=minecraft:area_effect_cloud]
