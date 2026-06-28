summon minecraft:item_display ~ ~0.05 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:item.gold_coin"},data:{entity:{namespace:"luigis_mansion",id:"item"},physics:{namespace:"luigis_mansion",id:"coin"},item:{namespace:"luigis_mansion",id:"gold_coin"},physics_offset:1.4d,pick_up_range:0.7f,particle:{chance:400,name:"minecraft:crit"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/gold_coin","minecraft:custom_model_data":{flags:[0b]}}},Tags:["item","no_capture_sound","affected_by_vacuum","same_room_players_only","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] AnimationRotationX -900
execute if predicate luigis_mansion:item/coin_flip_chance run scoreboard players set @e[tag=this_entity,limit=1] AnimationRotationX 900
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity