scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationZ 20
scoreboard players remove @s[scores={AnimationProgress=4..7}] AnimationRotationZ 20
scoreboard players add @s[scores={AnimationProgress=9..10}] AnimationRotationZ 20
execute unless data storage luigis_mansion:data ghost{tags:["maskless"]} run data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0