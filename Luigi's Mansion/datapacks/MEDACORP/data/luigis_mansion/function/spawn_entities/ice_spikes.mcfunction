summon minecraft:armor_stand ~ ~-2.2 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.ice_spike"},CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"ice_spikes"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ice_spikes"}}},Silent:1b,Pose:{Head:[0.0f,0.0f,0.01f]},LeftHanded:1b,Tags:["ice_spikes","same_room_players_only","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
$scoreboard players set @e[tag=this_entity,limit=1] IceSpikesNr $(id)
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity