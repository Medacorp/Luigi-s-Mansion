execute unless score #washroom_1_cabinet Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:19,tags:["drop_loot"]}
execute unless score #washroom_1_cabinet Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["washroom_1_medicine_cabinet"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"washroom_1_medicine_cabinet",contents:{luigis_mansion:{bill:10}}}
execute unless score #washroom_1_cabinet Searched matches 1 as @e[tag=luigi] if score #washroom_1_cabinet SearcherID = @s ID run tag @s add searcher
execute unless score #washroom_1_cabinet Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute unless score #washroom_1_cabinet Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 662 14 -21.0 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 660 14 -21.0 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 663 14 -21.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #washroom_1_cabinet Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=662.5,y=14,z=-21.5,distance=..0.7,tag=ghost,tag=hidden] add spawn