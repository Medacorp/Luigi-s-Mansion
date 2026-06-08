scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5..}] ^ ^-0.3 ^0.4
execute if entity @s[scores={AnimationProgress=1..5}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=1..5}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=6..7}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=8..9}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=11..12}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..14}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationZ 80
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5