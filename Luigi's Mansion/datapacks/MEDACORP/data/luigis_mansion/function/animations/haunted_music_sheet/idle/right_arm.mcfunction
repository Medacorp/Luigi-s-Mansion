scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players add @s AnimationRotationZ 180
execute if entity @s[scores={AnimationProgress=2..3}] run scoreboard players remove @s AnimationRotationZ 180
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players add @s AnimationRotationZ 180
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0
execute store result score @s AnimationRotationX run data get storage luigis_mansion:data ghost.rotation[1] 10