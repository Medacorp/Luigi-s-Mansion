scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=21..40}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=101..120}] run scoreboard players add @s AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0