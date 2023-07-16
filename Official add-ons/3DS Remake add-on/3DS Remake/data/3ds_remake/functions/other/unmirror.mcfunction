tag @s add me
execute store result score #temp HomeZ run data get entity @s Pos[2] 100
execute store result score #temp HomeRotation run data get entity @s Rotation[0]
summon minecraft:marker ~ ~ ~ {Tags:["teleport_target"]}
execute as @e[tag=teleport_target] run function 3ds_remake:other/unmirror_marker
scoreboard players reset #temp HomeRotation
scoreboard players reset #temp HomeZ
tag @s remove me