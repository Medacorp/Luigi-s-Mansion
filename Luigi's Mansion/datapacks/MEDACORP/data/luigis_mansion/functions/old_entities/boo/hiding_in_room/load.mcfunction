data modify storage luigis_mansion:data boos set from storage luigis_mansion:data current_state.current_data.boos
execute if data storage luigis_mansion:data boos[-1] run function luigis_mansion:old_entities/boo/hiding_in_room/check
scoreboard players operation @e[tag=hidden_boo,tag=new] Room = #temp Room
scoreboard players set @e[tag=hidden_boo,tag=new] HideTime 0
tag @e[tag=hidden_boo,tag=new] remove new 
scoreboard players reset #temp Room
scoreboard players reset #temp2 Room
data remove storage luigis_mansion:data boos