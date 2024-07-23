execute unless score #laundry_room_closet Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:22,tags:["drop_loot"]}
execute unless score #laundry_room_closet Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["laundry_room_cleaning_supply_cabinet"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"laundry_room_cleaning_supply_cabinet",contents:{luigis_mansion:{gold_coin:10,bill:10}}}
execute unless score #laundry_room_closet Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 714 11 -53 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 715 11 -53 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #laundry_room_closet Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=714.5,y=11,z=-52.5,distance=..0.7,tag=ghost,tag=hidden] add spawn