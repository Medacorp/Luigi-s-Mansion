scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5..}] ^ ^-0.3 ^0.4
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 80
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=6..7}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=8..9}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=11..12}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=13..14}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationZ 80
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5