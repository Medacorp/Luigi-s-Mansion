scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=5..8}] AnimationRotationX 100
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=9..12}] AnimationRotationX 100
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=13..16}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0