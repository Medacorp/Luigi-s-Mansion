execute unless score #dining_room_closet_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:26,tags:["drop_loot"]}
execute unless score #dining_room_closet_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_china_cabinet_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"dining_room_china_cabinet_2",contents:{luigis_mansion:{gold_coin:10,bill:10}}}
execute unless score #dining_room_closet_2 Searched matches 1 as @e[tag=luigi] if score #dining_room_closet_2 SearcherID = @s ID run tag @s add searcher
execute unless score #dining_room_closet_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_1
execute unless score #dining_room_closet_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 699 12 34 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 700 12 34 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #dining_room_closet_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=699.5,y=11,z=34.5,distance=..0.7,tag=ghost,tag=hidden] add spawn