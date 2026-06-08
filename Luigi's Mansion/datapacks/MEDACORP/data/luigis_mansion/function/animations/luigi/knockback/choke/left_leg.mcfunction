scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..4}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=5..8}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=9..12}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=13..16}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0