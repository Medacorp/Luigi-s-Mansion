scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -150
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationX -350
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationY 200
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationZ -150
teleport @s[tag=held_item] ^ ^0.2 ^-0.1
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=5..8}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=9..12}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=17..20}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=21..24}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0