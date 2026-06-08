scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=5..8}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=9..16}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=17..24}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=25..32}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=33..36}] run scoreboard players remove @s AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=50..}] AnimationProgress 0