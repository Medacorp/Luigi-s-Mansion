summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.shining_ghost"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:88}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["ball","ghost","shining_ghost","this_entity","vacuumable","no_y_sync"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
tag @e[tag=this_entity,limit=1] remove this_entity