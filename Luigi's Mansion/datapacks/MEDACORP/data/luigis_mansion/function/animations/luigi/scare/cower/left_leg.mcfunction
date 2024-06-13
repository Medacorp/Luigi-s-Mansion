scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,tag=!shrunk] ^ ^-0.6 ^-0.2 ~ ~
teleport @s[tag=flipped_gravity,tag=!shrunk] ^ ^0.6 ^-0.2 ~ ~
teleport @s[tag=!flipped_gravity,tag=shrunk] ^ ^-0.3 ^-0.1 ~ ~
teleport @s[tag=flipped_gravity,tag=shrunk] ^ ^0.3 ^-0.1 ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,-5.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-90.0f,-5.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0