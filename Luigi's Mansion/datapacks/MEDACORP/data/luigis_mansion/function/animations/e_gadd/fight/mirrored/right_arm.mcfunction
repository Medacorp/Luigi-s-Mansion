scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=4}] ^0.05 ^ ^
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5..12}] ^0.1 ^ ^
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=13}] ^0.05 ^ ^
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=16}] ^-0.05 ^ ^
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=17..24}] ^-0.1 ^ ^
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=25}] ^-0.05 ^ ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=4}] ^-0.05 ^ ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5..12}] ^-0.1 ^ ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=13}] ^-0.05 ^ ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=16}] ^0.05 ^ ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=17..24}] ^0.1 ^ ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=25}] ^0.05 ^ ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players remove @s[scores={AnimationProgress=5..7}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=8..10}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=17..19}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=20..22}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0