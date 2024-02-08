execute store result entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boolossus"}}}}]},tag=merged,limit=1] Rotation[0] float 1 run scoreboard players get #temp HomeRotation
data modify storage luigis_mansion:data entity set value {affected_by:["fire","ice"]}
execute at @s rotated ~ 20 run function luigis_mansion:spawn_entities/portrait_ghost/boolossus/split
scoreboard players operation #temp HomeRotation += #temp ActionTime
scoreboard players remove #temp Boos 1
execute if score #temp Boos matches 1.. run function luigis_mansion:old_entities/boolossus/split_boo