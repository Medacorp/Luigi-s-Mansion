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
data modify entity @s[scores={AnimationProgress=15}] item merge from entity @s item.components."minecraft:custom_data".model_data.squished
data remove entity @s[scores={AnimationProgress=15..109},tag=held_item] item
scoreboard players set @s[scores={AnimationProgress=80}] AnimationRotationX 900
scoreboard players set @s[scores={AnimationProgress=80}] AnimationRotationY 450
data modify entity @s[scores={AnimationProgress=110}] item merge from entity @s item.components."minecraft:custom_data".model_data.default
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 120
scoreboard players remove @s[scores={AnimationProgress=111..120}] AnimationRotationX 90
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationY 40
scoreboard players remove @s[scores={AnimationProgress=111..120}] AnimationRotationY 45
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0