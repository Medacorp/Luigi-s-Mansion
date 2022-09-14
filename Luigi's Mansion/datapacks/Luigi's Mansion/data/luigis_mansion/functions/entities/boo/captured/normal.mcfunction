function #luigis_mansion:entities/boo/captured/delete_boo
execute if data storage luigis_mansion:data current_state.current_data{boo_counter:49} at @a[tag=killer,limit=1] run function luigis_mansion:spawn_entities/item/gold_diamond
data modify entity @e[tag=this_entity,limit=1] Rotation set value [90.0f,0.0f]
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 3
tag @e[tag=this_entity,limit=1] remove this_entity
execute if data storage luigis_mansion:data current_state.current_data{boo_counter:4} at @s if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/door/hallway_5_washroom_1
execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute store result storage luigis_mansion:data current_state.current_data.boo_counter int 1 run scoreboard players add #temp Boos 1
scoreboard players reset #temp Boos
execute if entity @s[tag=!boolossus] unless entity @a[scores={GBHCall=1..},limit=1] run scoreboard players add @a GBHCall 5