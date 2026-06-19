scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=1}] ~ ~2 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=2}] ~ ~1.8 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=3}] ~ ~1.6 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=4}] ~ ~1.4 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5}] ~ ~1.2 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6}] ~ ~1 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7}] ~ ~0.8 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=8}] ~ ~0.6 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=9}] ~ ~0.4 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=10}] ~ ~0.2 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=1}] ~ ~-2 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=2}] ~ ~-1.8 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=3}] ~ ~-1.6 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=4}] ~ ~-1.4 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5}] ~ ~-1.2 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6}] ~ ~-1 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7}] ~ ~-0.8 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=8}] ~ ~-0.6 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=9}] ~ ~-0.4 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=10}] ~ ~-0.2 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 600
scoreboard players remove @s[scores={AnimationProgress=1..12}] AnimationRotationX 150
scoreboard players add @s[scores={AnimationProgress=13..16}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0