tag @s add me
execute store result score #temp HomeZ run data get entity @s Pos[2] 100
execute store result score #temp HomeRot run data get entity @s Rotation[0]
summon minecraft:marker ~ ~ ~ {Tags:["teleport_target"]}
execute as @e[tag=teleport_target] run function luigis_mansion_3ds_remake:other/unmirror_marker
scoreboard players reset #temp HomeRot
scoreboard players reset #temp HomeZ
tag @s remove me