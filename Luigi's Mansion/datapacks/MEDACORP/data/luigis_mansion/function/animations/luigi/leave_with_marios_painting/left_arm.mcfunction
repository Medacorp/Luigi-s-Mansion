scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1..},tag=held_item] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":5,"minecraft:custom_model_data":32}}
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1},tag=held_item] Pose.Head[0] set value -7.5f
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1},tag=held_item] Pose.Head[2] set value 110.0f
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1},tag=held_item,tag=flipped_gravity] Pose.Head[2] set value -70.0f
execute if score #mirrored Selected matches 1 positioned ^-0.6 ^-0.56 ^0.3 run teleport @s[tag=held_item,tag=!shrunk,tag=!flipped_gravity] ~ ~ ~ ~-90 ~
execute if score #mirrored Selected matches 1 positioned ^-0.4 ^-0.28 ^0.15 run teleport @s[tag=held_item,tag=shrunk,tag=!flipped_gravity] ~ ~ ~ ~-90 ~
execute if score #mirrored Selected matches 1 positioned ^0.6 ^0.56 ^0.3 run teleport @s[tag=held_item,tag=!shrunk,tag=flipped_gravity] ~ ~ ~ ~-90 ~
execute if score #mirrored Selected matches 1 positioned ^0.4 ^0.28 ^0.15 run teleport @s[tag=held_item,tag=shrunk,tag=flipped_gravity] ~ ~ ~ ~-90 ~
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 20
execute if entity @s[scores={AnimationProgress=1..4},tag=!held_item] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=5..12},tag=!held_item] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=13..16},tag=!held_item] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0