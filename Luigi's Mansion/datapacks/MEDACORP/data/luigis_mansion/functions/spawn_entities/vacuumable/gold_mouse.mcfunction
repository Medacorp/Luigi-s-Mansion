summon minecraft:armor_stand ~ ~-1.3 ~ {CustomName:'{"translate":"luigis_mansion:entity.gold_mouse"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{namespace:"luigis_mansion",id:"gold_mouse",Unbreakable:1b,Damage:1,CustomModelData:13,display:{color:16759040}}}],Pose:{Head:[0.01f,0.0f,0.0f]},Tags:["affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","optional_ghost","vacuumable","visible","mouse","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.gold_mouse.speed
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.gold_mouse.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.gold_mouse.damage
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity