scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,tag=!shrunk] ^ ^-0.6 ^-0.2 ~ ~
teleport @s[tag=flipped_gravity,tag=!shrunk] ^ ^0.6 ^-0.2 ~ ~
teleport @s[tag=!flipped_gravity,tag=shrunk] ^ ^-0.3 ^-0.1 ~ ~
teleport @s[tag=flipped_gravity,tag=shrunk] ^ ^0.3 ^-0.1 ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -50
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0