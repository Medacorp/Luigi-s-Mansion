scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=86..110}] rotated ~ 0 run teleport @s ^ ^-1.3 ^
execute at @s[scores={AnimationProgress=111}] rotated ~ 0 run teleport @s ^ ^-1.17 ^
execute at @s[scores={AnimationProgress=112}] rotated ~ 0 run teleport @s ^ ^-1.04 ^
execute at @s[scores={AnimationProgress=113}] rotated ~ 0 run teleport @s ^ ^-0.91 ^
execute at @s[scores={AnimationProgress=114}] rotated ~ 0 run teleport @s ^ ^-0.78 ^
execute at @s[scores={AnimationProgress=115}] rotated ~ 0 run teleport @s ^ ^-0.65 ^
execute at @s[scores={AnimationProgress=116}] rotated ~ 0 run teleport @s ^ ^-0.52 ^
execute at @s[scores={AnimationProgress=117}] rotated ~ 0 run teleport @s ^ ^-0.39 ^
execute at @s[scores={AnimationProgress=118}] rotated ~ 0 run teleport @s ^ ^-0.26 ^
execute at @s[scores={AnimationProgress=119}] rotated ~ 0 run teleport @s ^ ^-0.13 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=15}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.squished
data modify entity @s[scores={AnimationProgress=15..109},tag=held_item] ArmorItems[3].id set value "minecraft:stone_button"
data merge entity @s[scores={AnimationProgress=80}] {Pose:{Head:[90.0f,-45.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=110}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.default
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 12
execute if entity @s[scores={AnimationProgress=111..120}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute store result score #temp Time run data get entity @s Pose.Head[1] 100
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 400
execute if entity @s[scores={AnimationProgress=111..120}] store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 450
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=140..}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0