data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_mansion:data entity.rotation
execute as @e[tag=this_entity,limit=1,tag=item] store result score @s HomeRotationX run data get entity @s Rotation[1]
data modify entity @e[tag=this_entity,limit=1,tag=item] Rotation[1] set value 0.0f