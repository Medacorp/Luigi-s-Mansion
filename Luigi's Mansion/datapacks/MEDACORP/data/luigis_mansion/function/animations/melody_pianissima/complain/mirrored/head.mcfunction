scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players add @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0