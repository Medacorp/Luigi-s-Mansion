summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.ice_elemental_ghost"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:111}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["elemental_ghost","ice","ghost","optional_ghost","no_delete_on_room_clear","vacuumable","this_entity"],DisabledSlots:2039583}
scoreboard players operation @e[tag=this_entity,limit=1] ElementalNr = #temp ElementalNr
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 7
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
tag @e[tag=this_entity,limit=1] remove this_entity