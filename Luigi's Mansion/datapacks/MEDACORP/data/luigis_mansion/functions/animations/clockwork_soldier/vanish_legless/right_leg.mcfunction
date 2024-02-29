scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.0f]}}
data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.luigis_mansion.invisible
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0