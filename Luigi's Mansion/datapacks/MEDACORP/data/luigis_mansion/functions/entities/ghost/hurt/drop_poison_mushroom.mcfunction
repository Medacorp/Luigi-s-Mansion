scoreboard players set @s MushroomTimer 200
data modify storage luigis_mansion:data entity set value {rotation:[0.0f,0.0f]}
data modify storage luigis_mansion:data entity.rotation set from entity @s Rotation
execute at @s run function luigis_mansion:spawn_entities/item/poison_mushroom