scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 900
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationZ 25
execute if entity @s[scores={AnimationProgress=5..12}] run scoreboard players remove @s AnimationRotationZ 25
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players add @s AnimationRotationZ 25
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
execute store result score @s AnimationRotationY run data get entity @e[tag=this_entity,limit=1] Rotation[1] -10