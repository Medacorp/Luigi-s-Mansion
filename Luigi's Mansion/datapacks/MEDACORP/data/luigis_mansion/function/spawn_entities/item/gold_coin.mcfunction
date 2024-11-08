summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:item.gold_coin"}',Pose:{Head:[-90.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"item"},physics:{namespace:"luigis_mansion",id:"coin"},item:{namespace:"luigis_mansion",id:"gold_coin"},physics_offset:1.4d,pick_up_range:0.7f,particle:{chance:400,name:"minecraft:crit"}},"minecraft:unbreakable":{},"minecraft:item_model":"luigis_mansion:entity/gold_coin","minecraft:custom_model_data":{flags:[B;0b]}}}],Tags:["item","no_capture_sound","affected_by_vacuum","same_room_players_only","this_entity"],DisabledSlots:2039583}
execute if predicate luigis_mansion:50_50 run data modify entity @e[tag=this_entity,limit=1] Pose.Head[0] set value 90.0f
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity