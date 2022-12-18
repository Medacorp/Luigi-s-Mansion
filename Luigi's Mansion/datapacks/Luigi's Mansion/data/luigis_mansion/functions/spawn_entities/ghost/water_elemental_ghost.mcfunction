summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.water_elemental_ghost"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:109}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["elemental_ghost","water","ghost","optional_ghost","no_delete_on_room_clear","vacuumable","this_entity"],DisabledSlots:2039583}
scoreboard players operation @e[tag=this_entity,limit=1] ElementalNr = #temp ElementalNr
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.ghosts.water_elemental_ghost.loot
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 7
tag @e[tag=this_entity,limit=1] remove this_entity