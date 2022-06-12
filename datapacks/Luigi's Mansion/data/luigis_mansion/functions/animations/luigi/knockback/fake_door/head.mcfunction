scoreboard players add @s AnimationProg 1
execute at @s[scores={AnimationProg=86..110}] rotated ~ 0 run teleport @s ^ ^-1.33 ^0.03
execute at @s[scores={AnimationProg=111}] rotated ~ 0 run teleport @s ^ ^-1.1727 ^0.027
execute at @s[scores={AnimationProg=112}] rotated ~ 0 run teleport @s ^ ^-1.0424 ^0.024
execute at @s[scores={AnimationProg=113}] rotated ~ 0 run teleport @s ^ ^-0.9121 ^0.021
execute at @s[scores={AnimationProg=114}] rotated ~ 0 run teleport @s ^ ^-0.7818 ^0.018
execute at @s[scores={AnimationProg=115}] rotated ~ 0 run teleport @s ^ ^-0.6515 ^0.015
execute at @s[scores={AnimationProg=116}] rotated ~ 0 run teleport @s ^ ^-0.5212 ^0.012
execute at @s[scores={AnimationProg=117}] rotated ~ 0 run teleport @s ^ ^-0.3909 ^0.009
execute at @s[scores={AnimationProg=118}] rotated ~ 0 run teleport @s ^ ^-0.2606 ^0.006
execute at @s[scores={AnimationProg=119}] rotated ~ 0 run teleport @s ^ ^-0.1303 ^0.003
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProg=15..109}] ArmorItems[3].id set value "minecraft:stone_button"
data merge entity @s[scores={AnimationProg=80}] {Pose:{Head:[90.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProg=110}] ArmorItems[3].id set value "minecraft:leather_chestplate"
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=111..120}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProg=140..}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProg=140..}] AnimationProg 0