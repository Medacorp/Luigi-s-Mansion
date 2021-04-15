execute as @e[distance=..3,tag=!vanish,tag=!appear,tag=!hurt_animation,tag=!hurt,scores={StunTime=1}] at @s run function luigis_mansion:items/flashlight/vanish_ghost/effect
scoreboard players add #temp PathStep 1
execute unless score #temp PathStep matches 5 positioned ^ ^ ^1 if block ~ ~ ~ #luigis_mansion:flashlight_path run function luigis_mansion:items/flashlight/vanish_ghost/step