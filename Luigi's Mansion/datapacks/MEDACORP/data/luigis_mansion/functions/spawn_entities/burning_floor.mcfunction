summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.burning_floor"}',Invisible:1b,NoGravity:1b,Marker:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:43,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"burning_floor"},damage:{attack:10}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["burning_floor","affected_by_water","static","this_entity"],DisabledSlots:2039583}
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 12
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity