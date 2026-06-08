scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..13}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=14..26}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=27..39}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=40..52}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=52..}] AnimationProgress 0