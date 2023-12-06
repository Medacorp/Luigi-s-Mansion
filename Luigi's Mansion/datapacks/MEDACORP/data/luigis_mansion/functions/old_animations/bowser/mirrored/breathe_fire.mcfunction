scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..2}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.5 ^-0.5 ~ ~
execute if entity @s[scores={AnimationProgress=3..4}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.38 ^-0.51 ~ ~
execute if entity @s[scores={AnimationProgress=5..6}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.26 ^-0.52 ~ ~
execute if entity @s[scores={AnimationProgress=7..8}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.14 ^-0.53 ~ ~
execute if entity @s[scores={AnimationProgress=9..10}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.02 ^-0.54 ~ ~
execute if entity @s[scores={AnimationProgress=11..12}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.1 ^-0.55 ~ ~
execute if entity @s[scores={AnimationProgress=13..14}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.22 ^-0.56 ~ ~
execute if entity @s[scores={AnimationProgress=15..16}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.34 ^-0.57 ~ ~
execute if entity @s[scores={AnimationProgress=17..18}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.46 ^-0.58 ~ ~
execute if entity @s[scores={AnimationProgress=19..20}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.58 ^-0.59 ~ ~
execute if entity @s[scores={AnimationProgress=21..122}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.7 ^-0.6 ~ ~
execute if entity @s[scores={AnimationProgress=123..124}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.58 ^-0.59 ~ ~
execute if entity @s[scores={AnimationProgress=125..126}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.46 ^-0.58 ~ ~
execute if entity @s[scores={AnimationProgress=127..128}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.34 ^-0.57 ~ ~
execute if entity @s[scores={AnimationProgress=129..130}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.22 ^-0.56 ~ ~
execute if entity @s[scores={AnimationProgress=131..132}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^0.1 ^-0.55 ~ ~
execute if entity @s[scores={AnimationProgress=133..134}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.02 ^-0.54 ~ ~
execute if entity @s[scores={AnimationProgress=135..136}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.14 ^-0.53 ~ ~
execute if entity @s[scores={AnimationProgress=137..138}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.26 ^-0.52 ~ ~
execute if entity @s[scores={AnimationProgress=139..140}] run teleport @e[tag=this_model,tag=body,limit=1] ^ ^-0.38 ^-0.51 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.9 ^-0.1 ^0.1 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.9 ^-0.1 ^0.1 ~ ~
execute if entity @s[scores={AnimationProgress=1..20}] as @e[tag=this_model,tag=tail,limit=1] at @s run teleport @s ^ ^0.05 ^0.0375 ~ ~
execute if entity @s[scores={AnimationProgress=121..140}] as @e[tag=this_model,tag=tail,limit=1] at @s run teleport @s ^ ^-0.05 ^-0.0375 ~ ~
#teleport @e[tag=this_model,tag=right_leg,limit=1] ^-0.63 ^-2.45 ^-0.7 ~ ~
#teleport @e[tag=this_model,tag=left_leg,limit=1] ^0.63 ^-2.45 ^-0.7 ~ ~
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #2 Constants
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-70.0f,7.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-70.0f,-7.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_leg,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProgress=41..80}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
execute if entity @s[scores={AnimationProgress=81..120}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 15
execute if entity @s[scores={AnimationProgress=121..140}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players remove #temp Time 15
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 0.1 run scoreboard players add #temp Time 35
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 0 store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 1 store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=121..140}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 35
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 0 store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 1 store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 0 store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 1 store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 0 store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=21..121}] if score #temp AnimationProgress matches 1 store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players reset #temp AnimationProgress
execute if entity @s[scores={AnimationProgress=1}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
execute if entity @s[scores={AnimationProgress=15}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.open_mouth
execute if entity @s[scores={AnimationProgress=125}] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0