execute unless score #cellar_shelf_5 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:58,tags:["drop_loot"]}
execute unless score #cellar_shelf_5 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_shelf_contents_old_junk_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"cellar_shelf_contents_old_junk_2",contents:{luigis_mansion:{gold_coin:10}}}
execute unless score #cellar_shelf_5 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/d50_m10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 743 5 76 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 743 5 75 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #cellar_shelf_5 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=743.5,y=4,z=76.5,distance=..0.7,tag=ghost,tag=hidden] add spawn