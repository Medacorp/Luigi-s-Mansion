tag @e[distance=..0.7,type=minecraft:villager] add talk
execute positioned ~ ~1 ~ run tag @e[distance=..0.7,type=minecraft:villager] add talk
scoreboard players add #temp Distance 1
execute unless score #temp Distance matches 7 unless entity @e[distance=..0.7,type=minecraft:villager] positioned ~ ~1 ~ unless entity @e[distance=..0.7,type=minecraft:villager] positioned ~ ~-1 ~ positioned ^ ^ ^1 run function luigis_mansion:target_villager
scoreboard players reset #temp Distance