execute unless score #cellar_shelf_contents_vases_1 Searched matches 1 run data modify storage luigis_mansion:data furniture.loot set value {room:58,tags:["drop_loot"],loot:{contents:{luigis_mansion:{big_heart:1}}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 742 3 67 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 741 3 67 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #cellar_shelf_contents_vases_1 Searched 1
data remove storage luigis_mansion:data furniture
execute unless score #cellar_shelf_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:58,tags:["drop_loot"]}
execute unless score #cellar_shelf_1 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_shelf_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"cellar_shelf_1",contents:{luigis_mansion:{bill:5}}}
execute unless score #cellar_shelf_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 742 3 67 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 741 3 67 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #cellar_shelf_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=742.5,y=2,z=67.5,distance=..0.7,tag=ghost,tag=hidden] add spawn