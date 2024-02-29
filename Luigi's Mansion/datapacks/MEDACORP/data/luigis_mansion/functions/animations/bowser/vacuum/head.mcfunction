scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-3 ^2
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.open_mouth
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0