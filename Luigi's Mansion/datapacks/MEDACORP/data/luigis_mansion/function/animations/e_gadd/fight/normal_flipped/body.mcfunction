scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=4}] ^0.025 ^ ^
teleport @s[scores={AnimationProgress=5..12}] ^0.05 ^ ^
teleport @s[scores={AnimationProgress=13}] ^0.025 ^ ^
teleport @s[scores={AnimationProgress=16}] ^-0.025 ^ ^
teleport @s[scores={AnimationProgress=17..24}] ^-0.05 ^ ^
teleport @s[scores={AnimationProgress=25}] ^-0.025 ^ ^
scoreboard players remove @s[scores={AnimationProgress=4..5}] AnimationRotationZ 50
scoreboard players add @s[scores={AnimationProgress=13..14}] AnimationRotationZ 50
scoreboard players add @s[scores={AnimationProgress=16..17}] AnimationRotationZ 50
scoreboard players remove @s[scores={AnimationProgress=25..26}] AnimationRotationZ 50
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0