summon minecraft:armor_stand ~ ~-0.2 ~ {CustomName:'{"translate":"e3_demo:entity.bat"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{luigis_mansion:{namespace:"e3_demo",id:"bat"},Unbreakable:1b,Damage:1,CustomModelData:14,display:{color:15395562}}}],HandItems:[{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:15,luigis_mansion:{mirror:{tag:{Damage:3}}},display:{color:15395562}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:15,luigis_mansion:{mirror:{tag:{Damage:2}}},display:{color:15395562}}}],Pose:{RightArm:[180.0f,0.0f,0.01f],LeftArm:[180.0f,0.0f,0.01f],Head:[180.0f,0.0f,0.01f]},Tags:["affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","optional_ghost","vacuumable","visible","bat","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.bat.speed
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.loot set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.bat.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.damage set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.bat.damage
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 7
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 6
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity