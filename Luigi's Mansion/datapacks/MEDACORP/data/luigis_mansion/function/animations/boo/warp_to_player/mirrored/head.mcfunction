scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
teleport @s[scores={AnimationProgress=21}] ~ ~ ~ ~-36 ~
teleport @s[scores={AnimationProgress=22}] ~ ~ ~ ~-72 ~
teleport @s[scores={AnimationProgress=23}] ~ ~ ~ ~-108 ~
teleport @s[scores={AnimationProgress=24}] ~ ~ ~ ~-144 ~
teleport @s[scores={AnimationProgress=25}] ~ ~ ~ ~-180 ~
teleport @s[scores={AnimationProgress=26}] ~ ~ ~ ~-216 ~
teleport @s[scores={AnimationProgress=27}] ~ ~ ~ ~-252 ~
teleport @s[scores={AnimationProgress=28}] ~ ~ ~ ~-288 ~
teleport @s[scores={AnimationProgress=29}] ~ ~ ~ ~-324 ~
teleport @s[scores={AnimationProgress=31}] ~ ~ ~ ~-36 ~
teleport @s[scores={AnimationProgress=32}] ~ ~ ~ ~-72 ~
teleport @s[scores={AnimationProgress=33}] ~ ~ ~ ~-108 ~
teleport @s[scores={AnimationProgress=34}] ~ ~ ~ ~-144 ~
teleport @s[scores={AnimationProgress=35}] ~ ~ ~ ~-180 ~
teleport @s[scores={AnimationProgress=36}] ~ ~ ~ ~-216 ~
teleport @s[scores={AnimationProgress=37}] ~ ~ ~ ~-252 ~
teleport @s[scores={AnimationProgress=38}] ~ ~ ~ ~-288 ~
teleport @s[scores={AnimationProgress=39}] ~ ~ ~ ~-324 ~
teleport @s[scores={AnimationProgress=81}] ~ ~ ~ ~-36 ~
teleport @s[scores={AnimationProgress=82}] ~ ~ ~ ~-72 ~
teleport @s[scores={AnimationProgress=83}] ~ ~ ~ ~-108 ~
teleport @s[scores={AnimationProgress=84}] ~ ~ ~ ~-144 ~
teleport @s[scores={AnimationProgress=85}] ~ ~ ~ ~-180 ~
teleport @s[scores={AnimationProgress=86}] ~ ~ ~ ~-216 ~
teleport @s[scores={AnimationProgress=87}] ~ ~ ~ ~-252 ~
teleport @s[scores={AnimationProgress=88}] ~ ~ ~ ~-288 ~
teleport @s[scores={AnimationProgress=89}] ~ ~ ~ ~-324 ~
teleport @s[scores={AnimationProgress=91}] ~ ~ ~ ~-36 ~
teleport @s[scores={AnimationProgress=92}] ~ ~ ~ ~-72 ~
teleport @s[scores={AnimationProgress=93}] ~ ~ ~ ~-108 ~
teleport @s[scores={AnimationProgress=94}] ~ ~ ~ ~-144 ~
teleport @s[scores={AnimationProgress=95}] ~ ~ ~ ~-180 ~
teleport @s[scores={AnimationProgress=96}] ~ ~ ~ ~-216 ~
teleport @s[scores={AnimationProgress=97}] ~ ~ ~ ~-252 ~
teleport @s[scores={AnimationProgress=98}] ~ ~ ~ ~-288 ~
teleport @s[scores={AnimationProgress=99}] ~ ~ ~ ~-324 ~
teleport @s[scores={AnimationProgress=101}] ~ ~ ~ ~-36 ~
teleport @s[scores={AnimationProgress=102}] ~ ~ ~ ~-72 ~
teleport @s[scores={AnimationProgress=103}] ~ ~ ~ ~-108 ~
teleport @s[scores={AnimationProgress=104}] ~ ~ ~ ~-144 ~
teleport @s[scores={AnimationProgress=105}] ~ ~ ~ ~-180 ~
teleport @s[scores={AnimationProgress=106}] ~ ~ ~ ~-216 ~
teleport @s[scores={AnimationProgress=107}] ~ ~ ~ ~-252 ~
teleport @s[scores={AnimationProgress=108}] ~ ~ ~ ~-288 ~
teleport @s[scores={AnimationProgress=109}] ~ ~ ~ ~-324 ~
teleport @s[scores={AnimationProgress=111}] ~ ~ ~ ~-36 ~
teleport @s[scores={AnimationProgress=112}] ~ ~ ~ ~-72 ~
teleport @s[scores={AnimationProgress=113}] ~ ~ ~ ~-108 ~
teleport @s[scores={AnimationProgress=114}] ~ ~ ~ ~-144 ~
teleport @s[scores={AnimationProgress=115}] ~ ~ ~ ~-180 ~
teleport @s[scores={AnimationProgress=116}] ~ ~ ~ ~-216 ~
teleport @s[scores={AnimationProgress=117}] ~ ~ ~ ~-252 ~
teleport @s[scores={AnimationProgress=118}] ~ ~ ~ ~-288 ~
teleport @s[scores={AnimationProgress=119}] ~ ~ ~ ~-324 ~
data modify entity @s[scores={AnimationProgress=40}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.invisible
data modify entity @s[scores={AnimationProgress=80}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
scoreboard players set @s[scores={AnimationProgress=200}] AnimationProgress 0
data modify entity @s Pose.Head[0] set from entity @e[tag=this_entity,limit=1] Rotation[1]