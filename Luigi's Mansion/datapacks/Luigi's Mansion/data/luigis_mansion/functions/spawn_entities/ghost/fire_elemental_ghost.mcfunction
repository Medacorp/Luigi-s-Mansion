summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.fire_elemental_ghost"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:107}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["elemental_ghost","fire","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","optional_ghost","no_delete_on_room_clear","vacuumable","this_entity"],DisabledSlots:2039583}
scoreboard players operation @e[tag=this_entity,limit=1] ElementalNr = #temp ElementalNr
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.ghosts.fire_elemental_ghost.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data current_state.current_data.ghosts.fire_elemental_ghost.damage
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 7
execute if data storage luigis_mansion:data entity.training_room_score as @e[tag=this_entity,limit=1] store result score @s TrainingRoomScore run data get storage luigis_mansion:data entity.training_room_score
execute if data storage luigis_mansion:data entity.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data entity.loot
execute if data storage luigis_mansion:data entity.damage run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data entity.damage
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity