scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationZ -400
teleport @s[scores={AnimationProgress=5..}] ^ ^-0.1 ^0.2
teleport @s[scores={AnimationProgress=1..4},tag=held_item] ^ ^0.05 ^-0.25
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 80
scoreboard players remove @s[scores={AnimationProgress=6..7}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=8..9}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=11..12}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=13..14}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationZ 80
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5