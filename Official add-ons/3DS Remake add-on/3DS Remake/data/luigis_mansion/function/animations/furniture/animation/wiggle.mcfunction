scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..7}] run scoreboard players add @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=10..22}] run scoreboard players remove @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=25..30}] run scoreboard players add @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=31..35}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=38..47}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=50..57}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=60..62}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=63..64}] run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=67..69}] run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=72}] run scoreboard players remove @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=95}] AnimationProgress 75