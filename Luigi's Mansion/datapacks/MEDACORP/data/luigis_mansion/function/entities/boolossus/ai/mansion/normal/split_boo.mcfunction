execute store result entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=merged,limit=1] Rotation[0] float 1 run scoreboard players get #temp HomeRotation
data modify storage luigis_mansion:data entity set value {affected_by:["fire","ice"],room_search:{non_players:1b},tags:["no_dialog_freeze"]}
execute if score #temp3 Boos matches 1.. run data modify storage luigis_mansion:data entity.tags append value "agressive"
scoreboard players remove #temp3 Boos 1
execute at @s rotated ~ 10 run function luigis_mansion:spawn_entities/portrait_ghost/boolossus/split
scoreboard players operation #temp HomeRotation += #temp ActionTime
scoreboard players remove @s Health 1
execute if score @s Health matches 1.. run function luigis_mansion:entities/boolossus/ai/mansion/normal/split_boo