scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 8
execute if entity @s[scores={AnimationProgress=38..42}] run scoreboard players remove @s AnimationRotationX 24
execute if entity @s[scores={AnimationProgress=43..52}] run scoreboard players add @s AnimationRotationX 8
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0