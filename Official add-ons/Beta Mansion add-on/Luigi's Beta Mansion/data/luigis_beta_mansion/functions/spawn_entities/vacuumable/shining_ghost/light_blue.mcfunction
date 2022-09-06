summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.shining_ghost"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:17,display:{color:65491}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["beta_shining_ghost","optional_ghost","ghost","vacuumable","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.beta_shining_ghost.speed
tag @e[tag=this_entity,limit=1] remove this_entity