function luigis_mansion:spawn_furniture/setup/pose
execute store result score #temp Time run data get entity @e[tag=this_entity,limit=1] Pose.Head[2]
scoreboard players operation #temp2 Time = #temp Time
execute if score #temp2 Time matches ..-91 run scoreboard players add #temp2 Time 180
execute if score #temp2 Time matches 91.. run scoreboard players remove #temp2 Time 180
summon minecraft:marker ~ ~ ~ {Tags:["remove_from_existence","candle_flame_rotation"]}
teleport @e[tag=candle_flame_rotation,limit=1] ~ ~ ~ ~ ~
execute store result entity @e[tag=candle_flame_rotation,limit=1] Rotation[1] float 1 run scoreboard players get #temp2 Time