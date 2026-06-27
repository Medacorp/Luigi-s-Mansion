teleport @s ~ ~-0.35 ~ ~ ~
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -300
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationX -250
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationZ -100
teleport @s[tag=held_item] ^ ^-0.15 ^-0.25
execute if entity @s[scores={AnimationProgress=1..5},tag=!held_item] run scoreboard players remove @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=6..15},tag=!held_item] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=16..25},tag=!held_item] run scoreboard players remove @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=26..35},tag=!held_item] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=36..45},tag=!held_item] run scoreboard players remove @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=46..55},tag=!held_item] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=56..60},tag=!held_item] run scoreboard players remove @s AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 30