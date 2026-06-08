scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -300
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=4..9}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=10..15}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=16..18}] run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0