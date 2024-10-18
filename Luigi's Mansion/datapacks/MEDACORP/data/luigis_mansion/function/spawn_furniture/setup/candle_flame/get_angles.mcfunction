execute if entity @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/setup/pose
data modify storage luigis_mansion:data furniture.candle_flames_edit set from storage luigis_mansion:data furniture.candle_flames
execute store result score #temp Time run data get entity @e[tag=this_entity,limit=1] Rotation[0] 1000

execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @e[tag=this_entity,limit=1] Pose.Head[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosx Time run data get entity @e[tag=temp,limit=1] Pos[2] 1000
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @e[tag=this_entity,limit=1] Pose.Head[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosy Time run data get entity @e[tag=temp,limit=1] Pos[2] 1000
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @e[tag=this_entity,limit=1] Pose.Head[2]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosz Time run data get entity @e[tag=temp,limit=1] Pos[2] 1000
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @e[tag=this_entity,limit=1] Pose.Head[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #sinx Time run data get entity @e[tag=temp,limit=1] Pos[0] 1000
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @e[tag=this_entity,limit=1] Pose.Head[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #siny Time run data get entity @e[tag=temp,limit=1] Pos[0] 1000
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @e[tag=this_entity,limit=1] Pose.Head[2]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #sinz Time run data get entity @e[tag=temp,limit=1] Pos[0] 1000
kill @e[tag=temp]

execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["remove_from_existence","forward_angle","candle_angle"]}
execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["remove_from_existence","up_angle","candle_angle"]}
execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["remove_from_existence","left_angle","candle_angle"]}
execute as @e[tag=forward_angle,tag=candle_angle,limit=1] run function luigis_mansion:spawn_furniture/setup/candle_flame/forward
execute as @e[tag=up_angle,tag=candle_angle,limit=1] run function luigis_mansion:spawn_furniture/setup/candle_flame/up
execute as @e[tag=left_angle,tag=candle_angle,limit=1] run function luigis_mansion:spawn_furniture/setup/candle_flame/left
scoreboard players reset #cosx
scoreboard players reset #cosy
scoreboard players reset #cosz
scoreboard players reset #sinx
scoreboard players reset #siny
scoreboard players reset #sinz
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time