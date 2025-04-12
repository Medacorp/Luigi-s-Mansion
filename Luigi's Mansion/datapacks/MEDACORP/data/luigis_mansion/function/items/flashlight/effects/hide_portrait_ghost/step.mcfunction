execute if entity @s[distance=..3] run function luigis_mansion:items/flashlight/effects/hide_portrait_ghost/effect
scoreboard players add #temp PathStep 1
execute unless score #temp PathStep matches 20 positioned ^ ^ ^1 run function luigis_mansion:items/flashlight/effects/hide_portrait_ghost/step
scoreboard players reset #temp PathStep