scoreboard players set @s AnimationRotationX -1100
scoreboard players set @s AnimationRotationZ -900
scoreboard players remove @s[tag=flipped_gravity] AnimationRotationZ 1800
execute store result score @s AnimationRotationY run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10