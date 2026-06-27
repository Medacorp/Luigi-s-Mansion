scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=2}] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=3}] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=4}] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=5}] ^ ^ ^0.25 ~ ~
teleport @s[scores={AnimationProgress=6}] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=7}] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=8}] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=9}] ^ ^ ^0.05 ~ ~
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationZ 40
scoreboard players remove @s[scores={AnimationProgress=6..10}] AnimationRotationZ 40
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0