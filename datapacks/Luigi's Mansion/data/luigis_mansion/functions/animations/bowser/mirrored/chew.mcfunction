scoreboard players add @s AnimationProg 1
execute if entity @s[scores={AnimationProg=1..10}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.7 ^-0.6 ~ ~
execute if entity @s[scores={AnimationProg=11..12}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.58 ^-0.59 ~ ~
execute if entity @s[scores={AnimationProg=13..14}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.46 ^-0.58 ~ ~
execute if entity @s[scores={AnimationProg=15..16}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.34 ^-0.57 ~ ~
execute if entity @s[scores={AnimationProg=17..18}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.22 ^-0.56 ~ ~
execute if entity @s[scores={AnimationProg=19..20}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.1 ^-0.55 ~ ~
execute if entity @s[scores={AnimationProg=21..22}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.02 ^-0.54 ~ ~
execute if entity @s[scores={AnimationProg=23..24}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.14 ^-0.53 ~ ~
execute if entity @s[scores={AnimationProg=25..26}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.26 ^-0.52 ~ ~
execute if entity @s[scores={AnimationProg=27..28}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.38 ^-0.51 ~ ~
execute if entity @s[scores={AnimationProg=29..}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.4 ^-0.5 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.9 ^-0.1 ^0.1 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.9 ^-0.1 ^0.1 ~ ~
execute if entity @s[scores={AnimationProg=11..30}] as @e[tag=this_model,tag=tail,limit=1] at @s run teleport @s ^ ^-0.05 ^-0.0375 ~ ~
#teleport @e[tag=this_model,tag=right_leg,limit=1] ^-0.63 ^-2.45 ^-0.7 ~ ~
#teleport @e[tag=this_model,tag=left_leg,limit=1] ^0.63 ^-2.45 ^-0.7 ~ ~
scoreboard players operation #temp AnimationProg = @s AnimationProg
scoreboard players operation #temp AnimationProg %= #2 Constants
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[80.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-70.0f,7.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-70.0f,-7.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1] 10
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProg=21..40}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProg=41..60}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 30
execute if entity @s[scores={AnimationProg=61..80}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] 10
execute if entity @s[scores={AnimationProg=11..30}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 35
scoreboard players reset #temp Time
scoreboard players reset #temp AnimationProg
scoreboard players set @s[scores={AnimationProg=80}] AnimationProg 0