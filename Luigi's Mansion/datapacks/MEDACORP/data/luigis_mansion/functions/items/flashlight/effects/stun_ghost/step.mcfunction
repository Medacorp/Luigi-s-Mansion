execute at @s[distance=..3,scores={StunTime=0}] run function luigis_mansion:items/flashlight/effects/stun_ghost/effect
scoreboard players add #temp PathStep 1
execute unless score #temp PathStep matches 5 positioned ^ ^ ^1 if block ~ ~ ~ #luigis_mansion:flashlight_path run function luigis_mansion:items/flashlight/effects/stun_ghost/step
scoreboard players reset #temp PathStep