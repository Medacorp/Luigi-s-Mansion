scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -900
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=4..7}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=9..10}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
execute store result score @s AnimationRotationY run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10