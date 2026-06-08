scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 150
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationX -350
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationY -200
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationZ 150
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
teleport @s[tag=held_item] ^ ^0.2 ^-0.1
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=5..8}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=9..12}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=13..16}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=17..20}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=21..24}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0