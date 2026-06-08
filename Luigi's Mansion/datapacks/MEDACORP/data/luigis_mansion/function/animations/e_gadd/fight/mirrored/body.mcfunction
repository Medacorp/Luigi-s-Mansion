scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5..13}] ^0.05 ^ ^
teleport @s[scores={AnimationProgress=17..25}] ^-0.05 ^ ^
execute if entity @s[scores={AnimationProgress=4..5}] run scoreboard players add @s AnimationRotationZ 50
execute if entity @s[scores={AnimationProgress=13..14}] run scoreboard players remove @s AnimationRotationZ 50
execute if entity @s[scores={AnimationProgress=16..17}] run scoreboard players remove @s AnimationRotationZ 50
execute if entity @s[scores={AnimationProgress=25..26}] run scoreboard players add @s AnimationRotationZ 50
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0