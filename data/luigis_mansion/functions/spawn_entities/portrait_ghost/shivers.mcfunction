execute if score #mirrored Selected matches 0 run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.shivers"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:126}},{}],Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]},Tags:["shivers","portrait_ghost","pearl_dropper","ghost","cannot_be_removed","no_delete_on_room_clear","this_entity"],DisabledSlots:2039583}
execute if score #mirrored Selected matches 1 run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.shivers"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:126}}],Pose:{RightArm:[0.0f,0.0f,0.01f],LeftArm:[0.0f,0.0f,0.01f],Head:[0.0f,0.0f,0.01f]},Tags:["shivers","portrait_ghost","pearl_dropper","ghost","cannot_be_removed","no_delete_on_room_clear","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.shivers"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["shivers_body","cannot_be_removed","this_entity"],DisabledSlots:2039583}
teleport @e[tag=shivers,tag=this_entity,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=shivers_body,tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=shivers,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=shivers,tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=shivers_body,tag=this_entity,limit=1] GhostNr = @e[tag=shivers,tag=this_entity,limit=1] GhostNr
execute as @e[tag=shivers,tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=shivers,tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=shivers,tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=shivers,tag=this_entity,limit=1] store result score @s HomeRot run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s PrevHealth store result score @s LastHealth store result score @s Health run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers.health
execute as @e[tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers.max_health
scoreboard players set @e[tag=shivers,tag=this_entity,limit=1] PullStrength 10
scoreboard players set @e[tag=shivers,tag=this_entity,limit=1] Move 2
scoreboard players set @e[tag=shivers,tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=shivers,tag=this_entity,limit=1] StunTime 0
scoreboard players set @e[tag=shivers,tag=this_entity,limit=1] VulnerableTime 0
scoreboard players set @e[tag=shivers,tag=this_entity,limit=1] TopVacuumDamage 0
tag @e[tag=shivers,tag=this_entity,limit=1] remove this_entity
tag @e[tag=shivers_body,tag=this_entity,limit=1] remove this_entity