execute unless score #kitchen_closet Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:27,tags:["drop_loot"]}
execute unless score #kitchen_closet Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_dish_cabinet"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"kitchen_dish_cabinet",contents:{luigis_mansion:{gold_coin:15,bill:15}}}
execute unless score #kitchen_closet Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute unless data storage luigis_mansion:data furniture.loot positioned 699 12 65 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 700 12 65 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #kitchen_closet Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=699.5,y=11,z=65.5,distance=..0.7,tag=ghost,tag=hidden] add spawn