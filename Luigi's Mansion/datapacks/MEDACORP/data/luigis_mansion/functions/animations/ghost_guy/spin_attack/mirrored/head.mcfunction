scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=21}] ^ ^ ^ ~36 ~
teleport @s[scores={AnimationProgress=22}] ^ ^ ^ ~72 ~
teleport @s[scores={AnimationProgress=23}] ^ ^ ^ ~108 ~
teleport @s[scores={AnimationProgress=24}] ^ ^ ^ ~144 ~
teleport @s[scores={AnimationProgress=25}] ^ ^ ^ ~180 ~
teleport @s[scores={AnimationProgress=26}] ^ ^ ^ ~216 ~
teleport @s[scores={AnimationProgress=27}] ^ ^ ^ ~252 ~
teleport @s[scores={AnimationProgress=28}] ^ ^ ^ ~288 ~
teleport @s[scores={AnimationProgress=29}] ^ ^ ^ ~324 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0