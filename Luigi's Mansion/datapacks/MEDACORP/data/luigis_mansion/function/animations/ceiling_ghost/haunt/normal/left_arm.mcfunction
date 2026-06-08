scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationZ 70
execute if entity @s[scores={AnimationProgress=9..16}] run scoreboard players remove @s AnimationRotationZ 70
execute if entity @s[scores={AnimationProgress=21..24}] run scoreboard players add @s AnimationRotationZ 70
execute if entity @s[scores={AnimationProgress=5..6}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=7..8}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=17..18}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=19..20}] run scoreboard players add @s AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0