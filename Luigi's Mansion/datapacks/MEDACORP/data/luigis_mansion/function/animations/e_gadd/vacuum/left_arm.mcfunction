scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-45.0f,65.0f,0.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,-15.01f]}}
execute if score #mirrored Selected matches 1 run data merge entity @s[scores={AnimationProgress=1},tag=held_item] {Pose:{Head:[-35.0f,-20.0f,15.01f]}}
execute unless score #mirrored Selected matches 1 run teleport @s ^ ^ ^0.2
execute if score #mirrored Selected matches 1 run teleport @s[tag=held_item] ^ ^0.2 ^-0.1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=5..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=9..12}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=13..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=17..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=21..24}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0
scoreboard players reset #temp Time