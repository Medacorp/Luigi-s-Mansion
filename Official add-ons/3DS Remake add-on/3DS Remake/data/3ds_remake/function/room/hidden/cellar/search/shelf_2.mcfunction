execute unless score #cellar_shelf_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:58,tags:["drop_loot"]}
execute unless score #cellar_shelf_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_shelf_contents_old_junk_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"cellar_shelf_contents_old_junk_1",contents:{luigis_mansion:{gold_bar:1}}}
execute unless score #cellar_shelf_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/d50_p15
execute unless data storage luigis_mansion:data furniture.loot positioned 742 5 -52 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 741 5 -52 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #cellar_shelf_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=742.5,y=4,z=-51.5,distance=..0.7,tag=ghost,tag=hidden] add spawn