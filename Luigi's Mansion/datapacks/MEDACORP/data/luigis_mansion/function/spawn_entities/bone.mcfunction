summon minecraft:armor_stand ~ ~0.4 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.bone"},NoGravity:1b,Marker:1b,HasVisualFire:1b,Tags:["bone","same_room_players_only","this_entity"],Pose:{Head:[0.0f,0.0f,0.01f]},data:{entity:{namespace:"luigis_mansion",id:"bone"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/bone"}}},Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~0.4 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 6
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity