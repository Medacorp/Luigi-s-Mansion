scoreboard players add @s AnimationProgress 1
execute store result score @s[scores={AnimationProgress=1}] HomeRotation run data get entity @s Rotation[0]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s HomeRotation
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ 0
kill @e[tag=home,limit=1]
tag @s[scores={AnimationProgress=1}] add reset_rotation
scoreboard players set @s[scores={AnimationProgress=1}] Sound 100
execute if entity @s[scores={AnimationProgress=60,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=60,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=60,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=60,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={AnimationProgress=40}] run teleport @s ~ ~ ~ ~-180 ~
execute store result score @s[scores={AnimationProgress=40}] HomeRotation run data get entity @s Rotation[0]
tag @s[scores={AnimationProgress=120}] remove reset_rotation
scoreboard players reset @s[scores={AnimationProgress=120}] HomeRotation
execute if entity @s[scores={AnimationProgress=120}] run function luigis_mansion:entities/player/animation/set/none