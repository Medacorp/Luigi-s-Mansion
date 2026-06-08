scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=23..24}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=26..27}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=33..34}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=36..37}] run scoreboard players remove @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0