execute unless score #nanas_room_closet Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:44,tags:["drop_loot"]}
execute unless score #nanas_room_closet Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nanas_room_stacked_drawer_cabinet"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"nanas_room_stacked_drawer_cabinet",contents:{luigis_mansion:{gold_coin:20,bill:20}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 661 20 42 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 661 20 41 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #nanas_room_closet Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=661.5,y=20,z=42.5,distance=..0.7,tag=ghost,tag=hidden] add spawn