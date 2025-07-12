$summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:item.game_boy_horror"},data:{entity:{namespace:"luigis_mansion",id:"game_boy_horror/stairs"}},view_range:32f,item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/map/stairs","minecraft:custom_model_data":{flags:[$(top)b,$(left)b],strings:["$(type)"]}}},item_display:"head",Tags:["no_reflection","map_entity","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ 0
data modify entity @e[tag=this_entity,limit=1] transformation.scale set value [2.5f,2.5f,2.5f]
scoreboard players set @e[tag=this_entity,limit=1] Room 0
execute if data storage luigis_mansion:data furniture.type run data modify entity @e[tag=this_entity,limit=1] item.components."minecraft:custom_model_data".strings append from storage luigis_mansion:data furniture.type
execute if data storage luigis_mansion:data furniture.key run data modify entity @e[tag=this_entity,limit=1] data.key set from storage luigis_mansion:data furniture.key
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture