execute store result entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boolossus"}}]},tag=merged,limit=1] Rotation[0] float 1 run scoreboard players get #temp HomeRotation
execute at @s rotated ~ 20 run function luigis_mansion:spawn_entities/portrait_ghost/boolossus/split
scoreboard players operation #temp HomeRotation += #temp ActionTime
scoreboard players remove #temp Boos 1
execute if score #temp Boos matches 1.. run function luigis_mansion:entities/boolossus/split_boo