summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.ice_spike"}',CustomNameVisible:0b,Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:25}}],Silent:1b,Pose:{Head:[0.0f,0.0f,0.01f]},LeftHanded:1b,Tags:["ice_spike","optional_ghost","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotX run data get entity @s Rotation[0] 1
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotY run data get entity @s Rotation[1] 1
tag @e[tag=this_entity,limit=1] remove this_entity