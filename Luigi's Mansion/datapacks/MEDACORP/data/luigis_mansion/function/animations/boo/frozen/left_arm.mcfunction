scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -900
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationZ 25
scoreboard players add @s[scores={AnimationProgress=5..12}] AnimationRotationZ 25
scoreboard players remove @s[scores={AnimationProgress=13..16}] AnimationRotationZ 25
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
execute store result score @s AnimationRotationY run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10