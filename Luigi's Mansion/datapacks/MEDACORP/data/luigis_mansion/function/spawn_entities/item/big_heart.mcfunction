summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:item.heart"},Pose:{Head:[0.0f,0.0f,0.01f]},Rotation:[0.0f,-90.0f],Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"item"},physics:{namespace:"luigis_mansion",id:"generic"},item:{namespace:"luigis_mansion",id:"heart"},physics_offset:1.4d,pick_up_range:0.7f,variant:50},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/big_heart","minecraft:custom_model_data":{flags:[B;0b]}}}},Tags:["item","wall_bounce","keep_bouncing","affected_by_vacuum","same_room_players_only","this_entity"],DisabledSlots:2039583}
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 4
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
execute unless data storage luigis_mansion:data entity{silent:1b} run playsound luigis_mansion:item.heart.spawn player @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity