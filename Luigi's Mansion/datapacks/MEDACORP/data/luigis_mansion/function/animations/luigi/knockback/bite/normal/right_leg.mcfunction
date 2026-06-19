scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationZ 30
scoreboard players remove @s[scores={AnimationProgress=5..8}] AnimationRotationZ 30
scoreboard players add @s[scores={AnimationProgress=9..12}] AnimationRotationZ 30
scoreboard players remove @s[scores={AnimationProgress=13..16}] AnimationRotationZ 30
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0