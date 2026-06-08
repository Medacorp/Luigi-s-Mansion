scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3..6}] ~ ~-0.02 ~
teleport @s[scores={AnimationProgress=7..14}] ~ ~-0.04 ~
teleport @s[scores={AnimationProgress=15..18}] ~ ~-0.02 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -150
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=11..22}] run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=23..24}] run scoreboard players add @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0