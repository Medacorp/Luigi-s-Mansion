scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1}] AnimationRotationZ 180
scoreboard players remove @s[scores={AnimationProgress=2..3}] AnimationRotationZ 180
scoreboard players add @s[scores={AnimationProgress=4}] AnimationRotationZ 180
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0
execute store result score @s AnimationRotationX run data get storage luigis_mansion:data ghost.rotation[1] 10