execute if entity @s[distance=..3,tag=!smug] run function 3ds_remake:items/flashlight/effects/smug_elemental_hearts/effect
scoreboard players add #temp PathStep 1
execute unless score #temp PathStep matches 5 positioned ^ ^ ^1 if block ~ ~ ~ #luigis_mansion:flashlight_path run function 3ds_remake:items/flashlight/effects/smug_elemental_hearts/step
scoreboard players reset #temp PathStep