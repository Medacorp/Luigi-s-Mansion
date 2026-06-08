scoreboard players add @s AnimationProgress 1
data remove entity @s[scores={AnimationProgress=1..},tag=held_item] equipment.head
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players set @s AnimationRotationX -600
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players remove @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=5..8}] run scoreboard players add @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=11..14}] run scoreboard players remove @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=15..18}] run scoreboard players add @s AnimationRotationZ 40
execute at @s run teleport @s[scores={AnimationProgress=23}] ^ ^ ^0.1
execute at @s run teleport @s[scores={AnimationProgress=24..25}] ^ ^ ^0.2
execute at @s run teleport @s[scores={AnimationProgress=26}] ^ ^ ^0.1
execute at @s run teleport @s[scores={AnimationProgress=33}] ^ ^ ^0.1
execute at @s run teleport @s[scores={AnimationProgress=34..35}] ^ ^ ^0.2
execute at @s run teleport @s[scores={AnimationProgress=36}] ^ ^ ^0.1
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0