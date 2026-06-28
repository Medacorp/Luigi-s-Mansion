summon minecraft:item_display ~ ~0.05 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:item.heart"},data:{entity:{namespace:"luigis_mansion",id:"item"},physics:{namespace:"luigis_mansion",id:"generic"},item:{namespace:"luigis_mansion",id:"heart"},physics_offset:1.4d,pick_up_range:0.7f,variant:10},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/small_heart","minecraft:custom_model_data":{flags:[0b],strings:["default"]}}},Tags:["item","wall_bounce","keep_bouncing","affected_by_vacuum","same_room_players_only","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 7
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
execute unless data storage luigis_mansion:data entity{silent:1b} run playsound luigis_mansion:item.heart.spawn player @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity