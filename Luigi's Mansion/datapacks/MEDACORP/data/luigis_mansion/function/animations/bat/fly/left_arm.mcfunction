scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=1..9}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=12..20}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players remove @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=3..6}] run scoreboard players add @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=7..10}] run scoreboard players remove @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=11..14}] run scoreboard players add @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=15..18}] run scoreboard players remove @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=19..20}] run scoreboard players add @s AnimationRotationY 100
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0