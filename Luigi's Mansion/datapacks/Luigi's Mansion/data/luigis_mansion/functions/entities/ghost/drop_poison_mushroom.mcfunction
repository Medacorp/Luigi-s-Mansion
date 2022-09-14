scoreboard players set @s MushroomTimer 200
execute at @s run function luigis_mansion:spawn_entities/item/poison_mushroom
execute as @e[tag=this_entity,limit=1] positioned as @s run teleport ~ ~ ~ ~ ~
tag @e[tag=this_entity,limit=1] remove this_entity