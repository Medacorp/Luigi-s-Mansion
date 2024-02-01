scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=86..110}] rotated ~ 0 run teleport @s ^ ^-0.66 ^-0.64
execute at @s[scores={AnimationProgress=111}] rotated ~ 0 run teleport @s ^ ^-0.594 ^-0.576
execute at @s[scores={AnimationProgress=112}] rotated ~ 0 run teleport @s ^ ^-0.528 ^-0.512
execute at @s[scores={AnimationProgress=113}] rotated ~ 0 run teleport @s ^ ^-0.462 ^-0.448
execute at @s[scores={AnimationProgress=114}] rotated ~ 0 run teleport @s ^ ^-0.396 ^-0.384
execute at @s[scores={AnimationProgress=115}] rotated ~ 0 run teleport @s ^ ^-0.33 ^-0.32
execute at @s[scores={AnimationProgress=116}] rotated ~ 0 run teleport @s ^ ^-0.264 ^-0.256
execute at @s[scores={AnimationProgress=117}] rotated ~ 0 run teleport @s ^ ^-0.198 ^-0.192
execute at @s[scores={AnimationProgress=118}] rotated ~ 0 run teleport @s ^ ^-0.132 ^-0.128
execute at @s[scores={AnimationProgress=119}] rotated ~ 0 run teleport @s ^ ^-0.066 ^-0.064
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=15..109}] ArmorItems[3].id set value "minecraft:stone_button"
data merge entity @s[scores={AnimationProgress=80}] {Pose:{Head:[90.0f,22.5f,0.01f]}}
data modify entity @s[scores={AnimationProgress=110}] ArmorItems[3].id set value "minecraft:leather_chestplate"
execute store result score #temp Time run data get entity @s Pose.Head[0] 100
execute if entity @s[scores={AnimationProgress=111..120}] store result entity @s Pose.Head[0] float 0.01 run scoreboard players remove #temp Time 900
execute store result score #temp Time run data get entity @s Pose.Head[1] 100
execute if entity @s[scores={AnimationProgress=111..120}] store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 225
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=140..}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0