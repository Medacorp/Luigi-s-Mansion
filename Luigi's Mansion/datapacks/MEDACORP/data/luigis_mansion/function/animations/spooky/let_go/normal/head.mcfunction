scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 780
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -700
scoreboard players remove @s[scores={AnimationProgress=1..12}] AnimationRotationX 170
scoreboard players remove @s[scores={AnimationProgress=13..40}] AnimationRotationX 180
scoreboard players add @s[scores={AnimationProgress=56..60}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=1..7}] AnimationRotationZ 100
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0