scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=86..110}] rotated ~ 0 run teleport @s ^ ^-1.33 ^0.03
execute at @s[scores={AnimationProgress=111}] rotated ~ 0 run teleport @s ^ ^-1.1727 ^0.027
execute at @s[scores={AnimationProgress=112}] rotated ~ 0 run teleport @s ^ ^-1.0424 ^0.024
execute at @s[scores={AnimationProgress=113}] rotated ~ 0 run teleport @s ^ ^-0.9121 ^0.021
execute at @s[scores={AnimationProgress=114}] rotated ~ 0 run teleport @s ^ ^-0.7818 ^0.018
execute at @s[scores={AnimationProgress=115}] rotated ~ 0 run teleport @s ^ ^-0.6515 ^0.015
execute at @s[scores={AnimationProgress=116}] rotated ~ 0 run teleport @s ^ ^-0.5212 ^0.012
execute at @s[scores={AnimationProgress=117}] rotated ~ 0 run teleport @s ^ ^-0.3909 ^0.009
execute at @s[scores={AnimationProgress=118}] rotated ~ 0 run teleport @s ^ ^-0.2606 ^0.006
execute at @s[scores={AnimationProgress=119}] rotated ~ 0 run teleport @s ^ ^-0.1303 ^0.003
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=5}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.scared
data modify entity @s[scores={AnimationProgress=15}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.squished
data merge entity @s[scores={AnimationProgress=80}] {Pose:{Head:[90.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=110}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.scared
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=111..120}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=140..}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0