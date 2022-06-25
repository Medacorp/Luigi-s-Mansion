scoreboard players set @s MushroomTimer 200
execute at @s run function luigis_mansion:spawn_entities/item/poison_mushroom
execute positioned ~ ~-1 ~ run teleport @e[tag=item,distance=..0.1,limit=1] ~ ~ ~ ~ ~