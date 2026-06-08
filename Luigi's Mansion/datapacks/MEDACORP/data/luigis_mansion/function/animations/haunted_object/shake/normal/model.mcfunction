scoreboard players add @s AnimationProgress 1
execute store result score @s[scores={AnimationProgress=1}] AnimationRotationX run data get storage luigis_mansion:data ghost.rotation[1] 10
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players add @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=2..3}] run scoreboard players remove @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players add @s AnimationRotationZ 40
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0