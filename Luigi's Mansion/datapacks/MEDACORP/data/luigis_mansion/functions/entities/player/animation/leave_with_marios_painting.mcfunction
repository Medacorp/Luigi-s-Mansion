scoreboard players add @s AnimationProgress 1
execute store result score @s[scores={AnimationProgress=1}] HomeRotation run data get entity @s Rotation[0]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s HomeRotation
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ 0
kill @e[tag=home,limit=1]
tag @s[scores={AnimationProgress=1}] add reset_rotation
execute at @s positioned ^ ^ ^0.2 run function luigis_mansion:entities/player/set_position
scoreboard players set @s Sound 1
tag @s[scores={AnimationProgress=60}] remove reset_rotation
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/player/animation/set/none