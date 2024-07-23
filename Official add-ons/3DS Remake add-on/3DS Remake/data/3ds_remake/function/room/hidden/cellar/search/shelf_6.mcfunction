execute unless score #cellar_shelf_6 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:58,tags:["drop_loot"]}
execute unless score #cellar_shelf_6 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_shelf_contents_trophies_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"cellar_shelf_contents_trophies_2",contents:{luigis_mansion:{bill:5}}}
execute unless score #cellar_shelf_6 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute unless data storage luigis_mansion:data furniture.loot positioned 743 7 -61 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 743 7 -60 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #cellar_shelf_6 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=743.5,y=6,z=-60.5,distance=..0.7,tag=ghost,tag=hidden] add spawn