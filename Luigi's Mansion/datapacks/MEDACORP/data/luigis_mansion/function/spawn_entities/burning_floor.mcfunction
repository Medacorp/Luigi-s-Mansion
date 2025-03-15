summon minecraft:armor_stand ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.burning_floor"},Invisible:1b,NoGravity:1b,Marker:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,data:{entity:{namespace:"luigis_mansion",id:"burning_floor"},damage:{attack:10}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/burning_floor"}}},Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["burning_floor","affected_by_water","static","same_room_players_only","this_entity"],DisabledSlots:2039583}
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 12
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity