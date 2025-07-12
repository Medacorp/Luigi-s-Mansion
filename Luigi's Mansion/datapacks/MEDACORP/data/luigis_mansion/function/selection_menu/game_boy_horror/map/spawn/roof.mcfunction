$summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:item.game_boy_horror"},data:{entity:{namespace:"luigis_mansion",id:"game_boy_horror/room"},room:"$(room)"},view_range:32f,item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/game_boy_horror/map/room","minecraft:custom_model_data":{flags:[1b],colors:[15004656],strings:["unseen"]}}},item_display:"head",Tags:["no_reflection","map_entity","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ 0
$data modify entity @e[tag=this_entity,limit=1] transformation.scale set value [$(width)f,10f,$(depth)f]
scoreboard players set @e[tag=this_entity,limit=1] Room 0
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture